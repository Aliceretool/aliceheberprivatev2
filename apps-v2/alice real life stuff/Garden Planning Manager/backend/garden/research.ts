import {
  monthNameFromNumber,
  toDayOfMonth,
  toMonthNumber,
  toNullableInteger,
  toText,
  type GardenTaskInsert,
} from './types'

type PlantPlanRequest = {
  plantName: string
  plantStatus: 'seeds' | 'existing' | 'planned'
  climateNotes: string
  gardenNotes: string
  plantIdentity?: string
  growingPlace?: 'in_pot' | 'in_ground' | 'not_sure'
}

export type PlantIdentityOption = {
  label: string
  latin_name: string
  why_it_matters: string
  care_difference: string
  search_term: string
}

export type PlantAmbiguityResult = {
  needsClarification: boolean
  question: string
  options: PlantIdentityOption[]
}

type RawTask = {
  month_num?: unknown
  day_of_month?: unknown
  timing_window?: unknown
  stage_in_cycle?: unknown
  task_type?: unknown
  priority?: unknown
  action?: unknown
  detail?: unknown
  location?: unknown
}

type RawPlantPlan = {
  plant?: unknown
  latin_name?: unknown
  hardiness?: unknown
  site_conditions?: unknown
  pot_ok?: unknown
  min_pot_cm?: unknown
  best_spot?: unknown
  common_mistake?: unknown
  repeats_annually?: unknown
  tasks?: RawTask[]
}

type RawPlantIdentityOption = {
  label?: unknown
  latin_name?: unknown
  why_it_matters?: unknown
  care_difference?: unknown
  search_term?: unknown
}

type RawPlantAmbiguity = {
  needs_clarification?: unknown
  question?: unknown
  options?: RawPlantIdentityOption[]
}

function extractJsonObject<T>(value: string): T {
  const trimmed = value.trim()
  const fenced = trimmed.match(/```(?:json)?\s*([\s\S]*?)\s*```/i)
  const candidate = fenced?.[1] ?? trimmed
  const start = candidate.indexOf('{')
  const end = candidate.lastIndexOf('}')

  if (start === -1 || end === -1 || end <= start) {
    throw new Error('The AI research result was not valid JSON.')
  }

  const parsed: unknown = JSON.parse(candidate.slice(start, end + 1))
  if (typeof parsed !== 'object' || parsed === null || Array.isArray(parsed)) {
    throw new Error('The AI research result did not contain a usable object.')
  }

  return parsed as T
}

function normalizePriority(value: string): string {
  const normalized = value.toLowerCase()
  if (normalized.includes('essential')) {
    return 'Essential'
  }
  if (normalized.includes('optional')) {
    return 'Optional'
  }
  return 'Recommended'
}

function removeWateringGuidance(value: string): string {
  return value
    .replace(/[^.!?]*\b(?:water(?:ing|ed)?|moist(?:ure)?|irrigat\w*|drought|dry\s+conditions?)\b[^.!?]*[.!?]?/gi, '')
    .replace(/\s{2,}/g, ' ')
    .trim()
}

function toBoolean(value: unknown): boolean {
  if (typeof value === 'boolean') {
    return value
  }
  if (typeof value === 'string') {
    return ['true', 'yes', 'y'].includes(value.trim().toLowerCase())
  }
  return false
}

function normalizeAmbiguity(raw: RawPlantAmbiguity, plantName: string): PlantAmbiguityResult {
  const rawOptions = Array.isArray(raw.options) ? raw.options : []
  const options = rawOptions
    .map((option) => {
      const label = toText(option.label)
      const latinName = toText(option.latin_name)
      const searchTerm = toText(option.search_term) || [label, latinName].filter(Boolean).join(' ')

      return {
        label,
        latin_name: latinName,
        why_it_matters: removeWateringGuidance(toText(option.why_it_matters)),
        care_difference: removeWateringGuidance(toText(option.care_difference)),
        search_term: searchTerm,
      }
    })
    .filter((option) => option.label.length > 0 && option.search_term.length > 0)
    .slice(0, 4)

  const needsClarification = toBoolean(raw.needs_clarification) && options.length >= 2

  return {
    needsClarification,
    question: toText(raw.question) || `Which ${plantName} did you mean?`,
    options: needsClarification ? options : [],
  }
}

export async function checkPlantAmbiguity(params: PlantPlanRequest): Promise<PlantAmbiguityResult> {
  if (params.plantIdentity && params.plantIdentity.trim().length > 0) {
    return { needsClarification: false, question: '', options: [] }
  }

  const instruction = `Decide whether this garden plant name is ambiguous enough that the gardener should choose before a care plan is made.

Plant or seed name entered: ${params.plantName}
Plant status: ${params.plantStatus}
Climate/location notes: ${params.climateNotes || 'London, UK; mild temperate weather'}
Growing place: ${params.growingPlace === 'in_pot' ? 'in a pot or container' : params.growingPlace === 'in_ground' ? 'in the ground / border' : 'not sure yet'}
Garden constraints/notes: ${params.gardenNotes || 'not provided'}

Ask for clarification ONLY if both are true:
1. the name commonly refers to two or more different plants, species, plant groups, or bulbs/seeds with different horticultural identities; and
2. those possibilities have meaningfully different care instructions, timing, hardiness, pruning, sowing, container needs, or winter treatment.

Do not ask for clarification for differences that are only about watering, drought tolerance, moisture, or irrigation. Do not include watering, moisture, or irrigation advice in the output. Do not ask for clarification for minor cultivar/color differences if the care is basically the same. Use the notes to resolve the identity when they make one option clearly more likely.

Return exactly one JSON object:
{
  "needs_clarification": true,
  "question": "Which plant did you mean?",
  "options": [
    {
      "label": "common name option",
      "latin_name": "botanical name or plant group",
      "why_it_matters": "short reason the identity is ambiguous",
      "care_difference": "short practical difference in care",
      "search_term": "best precise plant identity to use for care research"
    }
  ]
}

If no clarification is needed, return:
{
  "needs_clarification": false,
  "question": "",
  "options": []
}

When clarification is needed, provide 2 to 4 likely options.`

  const result = await openai.text.generate({
    model: 'gpt-4o-mini',
    instruction,
    systemMessage: 'You are a practical horticultural assistant. Return valid JSON only, with no markdown or commentary.',
    temperature: 0,
  })

  return normalizeAmbiguity(extractJsonObject<RawPlantAmbiguity>(result.data.queryData.data), params.plantName)
}

export async function researchGardenTasks(params: PlantPlanRequest): Promise<GardenTaskInsert[]> {
  const resolvedIdentity = params.plantIdentity?.trim()
  const instruction = `Research a practical monthly garden care plan for this plant and return JSON only.

Plant or seed name entered: ${params.plantName}
${resolvedIdentity ? `Resolved plant identity to use: ${resolvedIdentity}\nUse this exact identity for the care plan; do not reinterpret the name.` : ''}
Plant status: ${params.plantStatus}
Climate/location notes: ${params.climateNotes || 'London, UK; mild temperate weather'}
Growing place: ${params.growingPlace === 'in_pot' ? 'in a pot or container' : params.growingPlace === 'in_ground' ? 'in the ground / border' : 'not sure yet'}
Garden constraints/notes: ${params.gardenNotes || 'Include advice for containers where appropriate'}

Return exactly one JSON object with this shape:
{
  "plant": "common name",
  "latin_name": "botanical name if known",
  "hardiness": "plain-English London/UK hardiness note, not a USDA/RHS zone category",
  "site_conditions": "sun/soil/exposure needs, with no watering advice",
  "pot_ok": "Yes/No/Yes but..., accounting for the chosen growing place",
  "min_pot_cm": 30,
  "best_spot": "specific placement advice, accounting for whether it is in a pot or in the ground",
  "common_mistake": "one likely mistake to avoid",
  "repeats_annually": "Yes or No",
  "tasks": [
    {
      "month_num": 3,
      "day_of_month": 20,
      "timing_window": "Late March",
      "stage_in_cycle": "Seed starting / establishment / flowering / harvest / winter care",
      "task_type": "Sow / Plant out / Feed / Prune / Harvest / Protect / Check",
      "priority": "Essential / Recommended / Optional",
      "action": "short imperative task title",
      "detail": "specific, evidence-based care instructions",
      "location": "indoors / greenhouse / outdoors / final position / n/a"
    }
  ]
}

Create 5 to 9 useful tasks spread across the year. For seeds, include sowing, hardening off, planting out, care, and harvest/flowering or winter tasks as relevant. For existing plants, focus on ongoing care, pruning, feeding, harvest/flowering, propagation, and winter protection as relevant. If the plant is in a pot, include container-appropriate placement, pot-size and winter exposure advice; if it is in the ground, write border/bed advice instead. The hardiness field must read like practical advice for London weather, not a zone label. Do not include standalone watering tasks, task_type "Water", or watering instructions anywhere in the output. Keep text concise and practical.`

  const result = await openai.text.generate({
    model: 'gpt-4o-mini',
    instruction,
    systemMessage: 'You are an expert horticultural researcher. Return valid JSON only, with no markdown or commentary.',
    temperature: 0.2,
  })

  const plan = extractJsonObject<RawPlantPlan>(result.data.queryData.data)
  const plant = toText(plan.plant) || params.plantName.trim()
  const latinName = toText(plan.latin_name)
  const hardiness = toText(plan.hardiness)
  const siteConditions = removeWateringGuidance(toText(plan.site_conditions))
  const potOk = removeWateringGuidance(toText(plan.pot_ok))
  const minPotCm = toNullableInteger(plan.min_pot_cm)
  const bestSpot = removeWateringGuidance(toText(plan.best_spot))
  const commonMistake = removeWateringGuidance(toText(plan.common_mistake))
  const repeatsAnnually = toText(plan.repeats_annually) || 'Yes'
  const tasks = Array.isArray(plan.tasks)
    ? plan.tasks
        .filter((task) => {
          const careText = [task.task_type, task.action, task.detail].map(toText).join(' ').toLowerCase()
          return !/\bwater(?:ing|ed)?\b/.test(careText)
        })
        .slice(0, 10)
    : []

  if (tasks.length === 0) {
    throw new Error('The AI research result did not include any non-watering monthly tasks.')
  }

  return tasks.map((task) => {
    const monthNumber = toMonthNumber(task.month_num)
    const dayOfMonth = toDayOfMonth(task.day_of_month)
    const priority = normalizePriority(toText(task.priority))

    return {
      sort_key: monthNumber * 100 + dayOfMonth,
      month_num: monthNumber,
      day_of_month: dayOfMonth,
      month_name: monthNameFromNumber(monthNumber),
      timing_window: removeWateringGuidance(toText(task.timing_window)) || monthNameFromNumber(monthNumber),
      stage_in_cycle: removeWateringGuidance(toText(task.stage_in_cycle)),
      plant,
      latin_name: latinName,
      hardiness: removeWateringGuidance(hardiness),
      task_type: removeWateringGuidance(toText(task.task_type)) || 'Care',
      priority,
      action: removeWateringGuidance(toText(task.action)) || `Care for ${plant}`,
      detail: removeWateringGuidance(toText(task.detail)),
      location: removeWateringGuidance(toText(task.location)),
      site_conditions: siteConditions,
      pot_ok: potOk,
      best_spot: bestSpot,
      common_mistake: commonMistake,
      repeats_annually: repeatsAnnually,
      min_pot_cm: minPotCm,
    }
  })
}
