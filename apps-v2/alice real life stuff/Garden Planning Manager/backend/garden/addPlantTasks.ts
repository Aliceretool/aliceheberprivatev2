import { researchGardenTasks } from './research'
import type { GardenTaskInsert, GardenTaskRow } from './types'

type Params = {
  plantName: string
  plantStatus: 'seeds' | 'existing' | 'planned'
  climateNotes?: string
  gardenNotes?: string
  plantIdentity?: string
  growingPlace?: 'in_pot' | 'in_ground' | 'not_sure'
  avoidDuplicates?: boolean
}

type ExistingTask = {
  plant: string | null
  month_num: number | null
  action: string | null
}

const taskColumns = [
  'sort_key',
  'month_num',
  'day_of_month',
  'month_name',
  'timing_window',
  'stage_in_cycle',
  'plant',
  'latin_name',
  'hardiness',
  'task_type',
  'priority',
  'action',
  'detail',
  'location',
  'site_conditions',
  'pot_ok',
  'best_spot',
  'common_mistake',
  'repeats_annually',
  'min_pot_cm',
] as const

const insertColumns = ['id', ...taskColumns] as const

function normalizeKeyPart(value: string | number | null): string {
  if (value === null) {
    return ''
  }
  return String(value).trim().toLowerCase()
}

function duplicateKey(task: Pick<GardenTaskInsert, 'plant' | 'month_num' | 'action'>): string {
  return [task.plant, task.month_num, task.action].map(normalizeKeyPart).join('|')
}

function taskValues(task: GardenTaskInsert): unknown[] {
  return taskColumns.map((column) => task[column])
}

export default async function(req: { params: Params; user: User }) {
  const plantName = req.params.plantName.trim()
  if (plantName.length < 2) {
    throw new Error('Enter a plant name with at least 2 characters.')
  }

  const researchedTasks = await researchGardenTasks({
    plantName,
    plantStatus: req.params.plantStatus,
    climateNotes: req.params.climateNotes?.trim() ?? '',
    gardenNotes: req.params.gardenNotes?.trim() ?? '',
    plantIdentity: req.params.plantIdentity?.trim() ?? '',
    growingPlace: req.params.growingPlace ?? 'not_sure',
  })

  const avoidDuplicates = req.params.avoidDuplicates ?? true
  let tasksToInsert = researchedTasks
  let skippedDuplicates = 0

  if (avoidDuplicates) {
    const existing = await retoolDb3.query<ExistingTask>(
      `SELECT plant, month_num, action
      FROM garden_tasks
      WHERE plant ILIKE $1`,
      [researchedTasks[0]?.plant ?? plantName],
    )
    const existingKeys = new Set(existing.data.map(duplicateKey))
    tasksToInsert = researchedTasks.filter((task) => !existingKeys.has(duplicateKey(task)))
    skippedDuplicates = researchedTasks.length - tasksToInsert.length
  }

  if (tasksToInsert.length === 0) {
    return {
      inserted: [] as GardenTaskRow[],
      researched: researchedTasks,
      skippedDuplicates,
      message: 'No new rows inserted because every researched task already appears to exist.',
    }
  }

  const maxIdResult = await retoolDb3.query<{ max_id: number | null }>('SELECT MAX(id) AS max_id FROM garden_tasks')
  const firstId = (maxIdResult.data[0]?.max_id ?? 0) + 1
  const values = tasksToInsert.flatMap((task, rowIndex) => [firstId + rowIndex, ...taskValues(task)])
  const rowsSql = tasksToInsert.map((_, rowIndex) => {
    const placeholders = insertColumns.map((_column, columnIndex) => `$${rowIndex * insertColumns.length + columnIndex + 1}`)
    return `(${placeholders.join(', ')})`
  })

  const inserted = await retoolDb3.query<GardenTaskRow>(
    `INSERT INTO garden_tasks (${insertColumns.join(', ')})
    VALUES ${rowsSql.join(', ')}
    RETURNING
      id,
      sort_key,
      month_num,
      day_of_month,
      month_name,
      timing_window,
      stage_in_cycle,
      plant,
      latin_name,
      hardiness,
      task_type,
      priority,
      action,
      detail,
      location,
      site_conditions,
      pot_ok,
      min_pot_cm,
      best_spot,
      common_mistake,
      repeats_annually`,
    values,
  )

  return {
    inserted: inserted.data,
    researched: researchedTasks,
    skippedDuplicates,
    message: `Inserted ${inserted.data.length} task${inserted.data.length === 1 ? '' : 's'} for ${researchedTasks[0]?.plant ?? plantName}.`,
  }
}
