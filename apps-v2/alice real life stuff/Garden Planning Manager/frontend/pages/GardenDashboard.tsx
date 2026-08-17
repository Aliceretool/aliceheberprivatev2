import { type FormEvent, useCallback, useEffect, useMemo, useState } from 'react'
import {
  AlertCircle,
  CalendarDays,
  CheckCircle2,
  Copy,
  ExternalLink,
  Flower2,
  Leaf,
  Plus,
  RefreshCw,
  Search,
  Sparkles,
  Sprout,
  Trash2,
} from 'lucide-react'
import { useAddPlantTasks, useCheckPlantAmbiguity, useGetGardenSummary, useGetGardenTasks, useRemovePlantTasks } from '../hooks/backend/garden'
import { Alert, AlertDescription, AlertTitle } from '../lib/shadcn/alert'
import { Badge } from '../lib/shadcn/badge'
import { Button } from '../lib/shadcn/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '../lib/shadcn/card'
import { Input } from '../lib/shadcn/input'
import { Label } from '../lib/shadcn/label'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '../lib/shadcn/select'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '../lib/shadcn/tabs'
import { Textarea } from '../lib/shadcn/textarea'
import { cn } from '../lib/shadcn/utils'

type GardenTask = {
  id: number
  month_num: number | null
  day_of_month: number | null
  month_name: string | null
  timing_window: string | null
  stage_in_cycle: string | null
  plant: string | null
  latin_name: string | null
  hardiness: string | null
  task_type: string | null
  priority: string | null
  action: string | null
  detail: string | null
  location: string | null
  site_conditions: string | null
  pot_ok: string | null
  min_pot_cm: number | null
  best_spot: string | null
  common_mistake: string | null
  repeats_annually: string | null
}

type MonthlySummary = {
  month_num: number | null
  month_name: string | null
  total_tasks: number
  essential_tasks: number
  recommended_tasks: number
  plant_count: number
}

type PlantSummary = {
  plant: string | null
  latin_name: string | null
  task_count: number
  first_month: number | null
  last_month: number | null
  essential_count: number
}

type GardenSummary = {
  monthly: MonthlySummary[]
  plants: PlantSummary[]
}

type PlantStatus = 'seeds' | 'existing' | 'planned'

type PlantIdentityOption = {
  label: string
  latin_name: string
  why_it_matters: string
  care_difference: string
  search_term: string
}

type PlantAmbiguity = {
  needsClarification: boolean
  question: string
  options: PlantIdentityOption[]
}

const months = [
  { value: '1', label: 'January', short: 'Jan' },
  { value: '2', label: 'February', short: 'Feb' },
  { value: '3', label: 'March', short: 'Mar' },
  { value: '4', label: 'April', short: 'Apr' },
  { value: '5', label: 'May', short: 'May' },
  { value: '6', label: 'June', short: 'Jun' },
  { value: '7', label: 'July', short: 'Jul' },
  { value: '8', label: 'August', short: 'Aug' },
  { value: '9', label: 'September', short: 'Sep' },
  { value: '10', label: 'October', short: 'Oct' },
  { value: '11', label: 'November', short: 'Nov' },
  { value: '12', label: 'December', short: 'Dec' },
]

const currentMonthValue = String(new Date().getMonth() + 1)

const monthStyles = [
  { card: 'bg-rose-50/80 border-rose-200 hover:bg-rose-100/80 dark:bg-rose-950/30 dark:border-rose-900 dark:hover:bg-rose-950/50', icon: 'bg-rose-100 text-rose-700 dark:bg-rose-900/50 dark:text-rose-200', flower: 'text-rose-400/30 dark:text-rose-300/20' },
  { card: 'bg-pink-50/80 border-pink-200 hover:bg-pink-100/80 dark:bg-pink-950/30 dark:border-pink-900 dark:hover:bg-pink-950/50', icon: 'bg-pink-100 text-pink-700 dark:bg-pink-900/50 dark:text-pink-200', flower: 'text-pink-400/30 dark:text-pink-300/20' },
  { card: 'bg-emerald-50/80 border-emerald-200 hover:bg-emerald-100/80 dark:bg-emerald-950/30 dark:border-emerald-900 dark:hover:bg-emerald-950/50', icon: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/50 dark:text-emerald-200', flower: 'text-emerald-400/30 dark:text-emerald-300/20' },
  { card: 'bg-lime-50/80 border-lime-200 hover:bg-lime-100/80 dark:bg-lime-950/30 dark:border-lime-900 dark:hover:bg-lime-950/50', icon: 'bg-lime-100 text-lime-700 dark:bg-lime-900/50 dark:text-lime-200', flower: 'text-lime-400/30 dark:text-lime-300/20' },
  { card: 'bg-amber-50/80 border-amber-200 hover:bg-amber-100/80 dark:bg-amber-950/30 dark:border-amber-900 dark:hover:bg-amber-950/50', icon: 'bg-amber-100 text-amber-700 dark:bg-amber-900/50 dark:text-amber-200', flower: 'text-amber-400/30 dark:text-amber-300/20' },
  { card: 'bg-yellow-50/80 border-yellow-200 hover:bg-yellow-100/80 dark:bg-yellow-950/30 dark:border-yellow-900 dark:hover:bg-yellow-950/50', icon: 'bg-yellow-100 text-yellow-700 dark:bg-yellow-900/50 dark:text-yellow-200', flower: 'text-yellow-400/30 dark:text-yellow-300/20' },
  { card: 'bg-orange-50/80 border-orange-200 hover:bg-orange-100/80 dark:bg-orange-950/30 dark:border-orange-900 dark:hover:bg-orange-950/50', icon: 'bg-orange-100 text-orange-700 dark:bg-orange-900/50 dark:text-orange-200', flower: 'text-orange-400/30 dark:text-orange-300/20' },
  { card: 'bg-fuchsia-50/80 border-fuchsia-200 hover:bg-fuchsia-100/80 dark:bg-fuchsia-950/30 dark:border-fuchsia-900 dark:hover:bg-fuchsia-950/50', icon: 'bg-fuchsia-100 text-fuchsia-700 dark:bg-fuchsia-900/50 dark:text-fuchsia-200', flower: 'text-fuchsia-400/30 dark:text-fuchsia-300/20' },
  { card: 'bg-purple-50/80 border-purple-200 hover:bg-purple-100/80 dark:bg-purple-950/30 dark:border-purple-900 dark:hover:bg-purple-950/50', icon: 'bg-purple-100 text-purple-700 dark:bg-purple-900/50 dark:text-purple-200', flower: 'text-purple-400/30 dark:text-purple-300/20' },
  { card: 'bg-sky-50/80 border-sky-200 hover:bg-sky-100/80 dark:bg-sky-950/30 dark:border-sky-900 dark:hover:bg-sky-950/50', icon: 'bg-sky-100 text-sky-700 dark:bg-sky-900/50 dark:text-sky-200', flower: 'text-sky-400/30 dark:text-sky-300/20' },
  { card: 'bg-violet-50/80 border-violet-200 hover:bg-violet-100/80 dark:bg-violet-950/30 dark:border-violet-900 dark:hover:bg-violet-950/50', icon: 'bg-violet-100 text-violet-700 dark:bg-violet-900/50 dark:text-violet-200', flower: 'text-violet-400/30 dark:text-violet-300/20' },
  { card: 'bg-teal-50/80 border-teal-200 hover:bg-teal-100/80 dark:bg-teal-950/30 dark:border-teal-900 dark:hover:bg-teal-950/50', icon: 'bg-teal-100 text-teal-700 dark:bg-teal-900/50 dark:text-teal-200', flower: 'text-teal-400/30 dark:text-teal-300/20' },
] as const

const taskStyles = [
  { card: 'border-rose-200 bg-rose-50/70 dark:border-rose-900 dark:bg-rose-950/20', blob: 'bg-rose-200/60 dark:bg-rose-900/40', icon: 'text-rose-500/70 dark:text-rose-300/50', panel: 'bg-white/70 dark:bg-rose-950/30' },
  { card: 'border-emerald-200 bg-emerald-50/70 dark:border-emerald-900 dark:bg-emerald-950/20', blob: 'bg-emerald-200/60 dark:bg-emerald-900/40', icon: 'text-emerald-500/70 dark:text-emerald-300/50', panel: 'bg-white/70 dark:bg-emerald-950/30' },
  { card: 'border-amber-200 bg-amber-50/70 dark:border-amber-900 dark:bg-amber-950/20', blob: 'bg-amber-200/60 dark:bg-amber-900/40', icon: 'text-amber-500/70 dark:text-amber-300/50', panel: 'bg-white/70 dark:bg-amber-950/30' },
  { card: 'border-sky-200 bg-sky-50/70 dark:border-sky-900 dark:bg-sky-950/20', blob: 'bg-sky-200/60 dark:bg-sky-900/40', icon: 'text-sky-500/70 dark:text-sky-300/50', panel: 'bg-white/70 dark:bg-sky-950/30' },
  { card: 'border-fuchsia-200 bg-fuchsia-50/70 dark:border-fuchsia-900 dark:bg-fuchsia-950/20', blob: 'bg-fuchsia-200/60 dark:bg-fuchsia-900/40', icon: 'text-fuchsia-500/70 dark:text-fuchsia-300/50', panel: 'bg-white/70 dark:bg-fuchsia-950/30' },
] as const

function getMonthStyle(index: number) {
  return monthStyles[index % monthStyles.length]!
}

function getTaskStyle(index: number) {
  return taskStyles[index % taskStyles.length]!
}

function getMonthLabel(monthNumber: number | null): string {
  if (monthNumber === null) return 'Unscheduled'
  return months.find((month) => month.value === String(monthNumber))?.label ?? 'Unscheduled'
}

function compactText(value: string | null): string {
  return value && value.trim().length > 0 ? value : '—'
}

function priorityVariant(priority: string | null): 'default' | 'secondary' | 'outline' | 'warning' {
  const normalized = priority?.toLowerCase() ?? ''
  if (normalized.includes('essential')) return 'warning'
  if (normalized.includes('recommended')) return 'default'
  if (normalized.includes('optional')) return 'secondary'
  return 'outline'
}

function priorityLabel(priority: string | null): string {
  const normalized = priority?.toLowerCase() ?? ''
  if (normalized.includes('essential')) return 'Must do'
  if (normalized.includes('recommended')) return 'Good to do'
  if (normalized.includes('optional')) return 'If you feel like it'
  return compactText(priority)
}

function seasonNote(monthValue: string): string {
  const monthNumber = Number(monthValue)
  if ([12, 1, 2].includes(monthNumber)) return 'Quiet winter checks, protection, and a little dreaming.'
  if ([3, 4, 5].includes(monthNumber)) return 'Spring energy: sowing, planting out, and watching everything wake up.'
  if ([6, 7, 8].includes(monthNumber)) return 'Summer rhythm: water, feed, deadhead, harvest, and enjoy.'
  return 'Autumn tidying, seed saving, planting, and preparing for next year.'
}

function imageSearchUrl(option: PlantIdentityOption): string {
  const query = [option.label, option.latin_name].filter(Boolean).join(' ')
  return `https://www.google.com/search?tbm=isch&q=${encodeURIComponent(query || option.search_term)}`
}

function plantIdentityText(option: PlantIdentityOption): string {
  return [option.label, option.latin_name].filter(Boolean).join(' — ') || option.search_term
}

export default function GardenDashboard() {
  const [activeTab, setActiveTab] = useState('year')
  const [selectedMonth, setSelectedMonth] = useState(currentMonthValue)
  const [selectedPlant, setSelectedPlant] = useState('all')
  const [search, setSearch] = useState('')
  const [plantName, setPlantName] = useState('')
  const [plantStatus, setPlantStatus] = useState<PlantStatus>('seeds')
  const [growingPlace, setGrowingPlace] = useState<'in_pot' | 'in_ground' | 'not_sure'>('not_sure')
  const [climateNotes, setClimateNotes] = useState('')
  const [gardenNotes, setGardenNotes] = useState('')
  const [plantIdentity, setPlantIdentity] = useState('')
  const [ambiguity, setAmbiguity] = useState<PlantAmbiguity | null>(null)
  const [addMessage, setAddMessage] = useState<string | null>(null)
  const [plantToRemove, setPlantToRemove] = useState('none')
  const [removeMessage, setRemoveMessage] = useState<string | null>(null)

  const {
    data: tasksData,
    loading: tasksLoading,
    error: tasksError,
    dataAccessErrors: tasksDataAccessErrors,
    trigger: triggerTasks,
  } = useGetGardenTasks()
  const { data: summaryData, error: summaryError, trigger: triggerSummary } = useGetGardenSummary()
  const { loading: ambiguityLoading, error: ambiguityError, trigger: triggerCheckPlantAmbiguity } = useCheckPlantAmbiguity()
  const { loading: addPlantLoading, error: addPlantError, trigger: triggerAddPlant } = useAddPlantTasks()
  const { loading: removePlantLoading, error: removePlantError, trigger: triggerRemovePlant } = useRemovePlantTasks()

  const taskParams = useMemo(
    () => ({
      month: selectedMonth === 'all' ? 'all' : Number(selectedMonth),
      plant: selectedPlant,
      search,
    }),
    [search, selectedMonth, selectedPlant],
  )

  const reloadGardenData = useCallback(() => {
    triggerTasks(taskParams, { skipCache: true })
    triggerSummary({}, { skipCache: true })
  }, [taskParams, triggerSummary, triggerTasks])

  useEffect(() => {
    reloadGardenData()
  }, [reloadGardenData])

  const tasks = (tasksData ?? []) as GardenTask[]
  const summary = (summaryData ?? { monthly: [], plants: [] }) as GardenSummary
  const selectedMonthName = selectedMonth === 'all' ? 'the whole year' : getMonthLabel(Number(selectedMonth))

  const availablePlants = useMemo(() => {
    const names = new Set<string>()
    summary.plants.forEach((plant) => {
      if (plant.plant && plant.plant !== 'Unspecified') names.add(plant.plant)
    })
    tasks.forEach((task) => {
      if (task.plant) names.add(task.plant)
    })
    return Array.from(names).sort((a, b) => a.localeCompare(b))
  }, [summary.plants, tasks])

  const removablePlants = useMemo(
    () => availablePlants.filter((plant) => plant !== 'All plants'),
    [availablePlants],
  )

  const monthCards = months.map((month, index) => {
    const monthSummary = summary.monthly.find((item) => item.month_num === Number(month.value))
    return {
      ...month,
      style: getMonthStyle(index),
      tasks: monthSummary?.total_tasks ?? 0,
      mustDo: monthSummary?.essential_tasks ?? 0,
      plants: monthSummary?.plant_count ?? 0,
    }
  })

  async function addPlantToPlan(resolvedPlantIdentity: string) {
    const result = await triggerAddPlant({
      plantName,
      plantStatus,
      climateNotes,
      gardenNotes,
      plantIdentity: resolvedPlantIdentity,
      growingPlace,
      avoidDuplicates: true,
    }).result

    const typedResult = result as { message?: string; inserted?: Array<{ plant: string | null }> } | null
    const addedPlant = typedResult?.inserted?.[0]?.plant ?? 'all'
    const refreshedTaskParams = { month: 'all', plant: addedPlant, search: '' }

    setAddMessage(typedResult?.message ?? 'Plant notes added to your garden plan.')
    setPlantName('')
    setPlantStatus('seeds')
    setGrowingPlace('not_sure')
    setClimateNotes('')
    setGardenNotes('')
    setPlantIdentity('')
    setAmbiguity(null)
    setSearch('')
    setSelectedMonth('all')
    setSelectedPlant(addedPlant)
    setActiveTab('add')
    triggerTasks(refreshedTaskParams, { skipCache: true })
    triggerSummary({}, { skipCache: true })
  }

  async function handleAddPlant(event: FormEvent<HTMLFormElement>) {
    event.preventDefault()
    setAddMessage(null)
    setRemoveMessage(null)

    try {
      if (plantIdentity.length === 0) {
        const checkResult = await triggerCheckPlantAmbiguity({
          plantName,
          plantStatus,
          climateNotes,
          gardenNotes,
          growingPlace,
        }).result
        const typedCheckResult = checkResult as PlantAmbiguity | null

        if (typedCheckResult?.needsClarification) {
          setAmbiguity(typedCheckResult)
          return
        }
      }

      await addPlantToPlan(plantIdentity)
    } catch {
      // The hooks render backend error state.
    }
  }

  async function handleRemovePlant() {
    if (plantToRemove === 'none') return
    setRemoveMessage(null)
    setAddMessage(null)

    try {
      const result = await triggerRemovePlant({ plant: plantToRemove }).result
      const typedResult = result as { message?: string } | null
      setRemoveMessage(typedResult?.message ?? `${plantToRemove} removed from the garden plan.`)
      setPlantToRemove('none')
      setSelectedPlant('all')
      setSelectedMonth('all')
      setSearch('')
      triggerTasks({ month: 'all', plant: 'all', search: '' }, { skipCache: true })
      triggerSummary({}, { skipCache: true })
    } catch {
      // The hook renders the backend error state.
    }
  }

  return (
    <main className="relative min-h-screen overflow-hidden bg-background text-foreground">
      <div aria-hidden="true" className="pointer-events-none absolute inset-0 -z-10">
        <div className="absolute -left-24 top-16 h-72 w-72 rounded-full bg-primary/10 blur-3xl" />
        <div className="absolute right-0 top-1/3 h-96 w-96 rounded-full bg-accent/60 blur-3xl" />
        <div className="absolute bottom-0 left-1/3 h-80 w-80 rounded-full bg-secondary/40 blur-3xl" />
      </div>

      <section className="relative overflow-hidden border-b border-border bg-gradient-to-br from-accent/50 via-background to-primary/10">
        <div aria-hidden="true" className="absolute inset-0 opacity-80">
          <div className="absolute -left-20 top-0 h-56 w-56 rounded-full bg-rose-300/30 blur-3xl dark:bg-rose-900/30" />
          <div className="absolute right-10 top-8 h-64 w-64 rounded-full bg-amber-200/40 blur-3xl dark:bg-amber-900/25" />
          <div className="absolute bottom-0 left-1/3 h-60 w-60 rounded-full bg-emerald-200/40 blur-3xl dark:bg-emerald-900/30" />
          <Flower2 className="absolute left-[8%] top-8 h-7 w-7 rotate-12 text-rose-500/50 dark:text-rose-300/40" />
          <Sparkles className="absolute left-[44%] top-12 h-5 w-5 text-amber-500/50 dark:text-amber-300/40" />
          <Leaf className="absolute bottom-10 left-[34%] h-8 w-8 -rotate-12 text-emerald-600/40 dark:text-emerald-300/35" />
          <Flower2 className="absolute right-[18%] top-16 h-10 w-10 -rotate-12 text-fuchsia-500/40 dark:text-fuchsia-300/35" />
        </div>
        <div className="relative mx-auto grid max-w-7xl gap-10 px-6 py-12 lg:grid-cols-[1fr_360px] lg:items-center">
          <div className="space-y-6">
            <div className="inline-flex items-center gap-2 rounded-full border border-emerald-200 bg-emerald-50/90 px-4 py-2 text-sm text-emerald-900 shadow-retool-sm backdrop-blur dark:border-emerald-900 dark:bg-emerald-950/40 dark:text-emerald-100">
              <Leaf className="h-4 w-4 text-primary" />
              A relaxed plan for pottering in the garden
            </div>
            <div className="space-y-4">
              <h1 className="max-w-3xl text-4xl font-semibold tracking-tight md:text-6xl">What shall we do in the garden?</h1>
              <p className="max-w-2xl text-lg leading-8 text-muted-foreground">
                A calm month-by-month guide for sowing, planting, feeding, pruning, and remembering the little jobs at the right time.
              </p>
            </div>
            <div className="flex flex-wrap gap-3">
              <Button onClick={() => setActiveTab('tasks')} className="rounded-full bg-emerald-600 text-white shadow-retool-sm hover:bg-emerald-700 dark:bg-emerald-500 dark:text-emerald-950 dark:hover:bg-emerald-400">
                <CalendarDays className="h-4 w-4" />
                See {selectedMonthName}
              </Button>
              <Button onClick={() => setActiveTab('add')} variant="outline" className="rounded-full border-rose-200 bg-rose-50/80 text-rose-900 backdrop-blur hover:bg-rose-100 dark:border-rose-900 dark:bg-rose-950/40 dark:text-rose-100 dark:hover:bg-rose-950/60">
                <Sprout className="h-4 w-4" />
                Add something to grow
              </Button>
            </div>
          </div>

          <div aria-hidden="true" className="relative hidden h-80 lg:block">
            <div className="absolute inset-x-8 bottom-8 h-24 rounded-full bg-primary/10 blur-2xl" />
            <div className="absolute bottom-8 left-1/2 h-48 w-1 -translate-x-1/2 rounded-full bg-primary/40" />
            <div className="absolute bottom-36 left-1/2 h-24 w-24 -translate-x-1/2 rounded-full bg-primary/15" />
            <div className="absolute bottom-40 left-[38%] h-20 w-20 rotate-45 rounded-full bg-rose-200 shadow-retool-md dark:bg-rose-900/60" />
            <div className="absolute bottom-40 right-[38%] h-20 w-20 -rotate-45 rounded-full bg-amber-200 shadow-retool-md dark:bg-amber-900/60" />
            <div className="absolute bottom-52 left-1/2 h-24 w-24 -translate-x-1/2 rounded-full bg-fuchsia-50 shadow-retool-md dark:bg-fuchsia-950" />
            <Flower2 className="absolute bottom-56 left-1/2 h-14 w-14 -translate-x-1/2 text-fuchsia-600 dark:text-fuchsia-300" />
            <Leaf className="absolute bottom-20 left-[35%] h-16 w-16 -rotate-45 text-primary/60" />
            <Leaf className="absolute bottom-24 right-[32%] h-16 w-16 rotate-45 text-primary/60" />
          </div>
        </div>
      </section>

      <div className="mx-auto grid max-w-7xl gap-6 px-6 py-8">
        {tasksError || summaryError ? (
          <Alert variant="destructive">
            <AlertCircle className="h-4 w-4" />
            <AlertTitle>The garden plan could not load</AlertTitle>
            <AlertDescription>{tasksError ?? summaryError}</AlertDescription>
          </Alert>
        ) : null}

        {!tasksError && tasksDataAccessErrors.length > 0 ? (
          <Alert>
            <AlertCircle className="h-4 w-4" />
            <AlertTitle>Access restricted</AlertTitle>
            <AlertDescription>{tasksDataAccessErrors.map((error) => error.message).join('; ')}</AlertDescription>
          </Alert>
        ) : null}

        <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-6">
          <TabsList className="grid w-full grid-cols-3 rounded-full border border-border bg-card/80 p-1 shadow-retool-sm backdrop-blur lg:w-[520px]">
            <TabsTrigger value="year" className="rounded-full">Garden year</TabsTrigger>
            <TabsTrigger value="tasks" className="rounded-full">This month</TabsTrigger>
            <TabsTrigger value="add" className="rounded-full">Add / remove plants</TabsTrigger>
          </TabsList>

          <TabsContent value="year" className="space-y-6">
            <Card className="overflow-hidden rounded-[2rem] border-primary/10 bg-card/90 shadow-retool-md backdrop-blur">
              <CardHeader className="relative">
                <Flower2 aria-hidden="true" className="absolute right-6 top-6 h-10 w-10 text-primary/20" />
                <CardTitle>Choose a month</CardTitle>
                <CardDescription>No performance charts. Just a simple seasonal map of what wants attention and when.</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
                  {monthCards.map((month) => (
                    <button
                      key={month.value}
                      type="button"
                      onClick={() => {
                        setSelectedMonth(month.value)
                        setActiveTab('tasks')
                      }}
                      className={cn(
                        'group relative overflow-hidden rounded-[1.75rem] border p-5 text-left shadow-retool-sm transition-all hover:-translate-y-1 hover:shadow-retool-md',
                        month.style.card,
                        selectedMonth === month.value && 'ring-2 ring-primary/40 shadow-retool-md',
                      )}
                    >
                      <Flower2 className={cn('absolute -right-3 -top-3 h-16 w-16 rotate-12 transition-transform group-hover:rotate-45', month.style.flower)} />
                      <div className="relative flex items-start justify-between gap-3">
                        <div>
                          <div className="text-xl font-semibold">{month.label}</div>
                          <div className="mt-1 text-sm text-muted-foreground">{seasonNote(month.value)}</div>
                        </div>
                        <div className={cn('rounded-full p-2 transition-colors', month.style.icon)}>
                          <Sprout className="h-5 w-5" />
                        </div>
                      </div>
                      <div className="relative mt-5 flex flex-wrap gap-2">
                        <Badge variant={month.tasks > 0 ? 'default' : 'secondary'}>{month.tasks} reminders</Badge>
                        {month.mustDo > 0 ? <Badge variant="warning">{month.mustDo} must-do</Badge> : null}
                        {month.plants > 0 ? <Badge variant="outline">{month.plants} plants</Badge> : null}
                      </div>
                    </button>
                  ))}
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="tasks" className="space-y-5">
            <Card className="overflow-hidden rounded-[2rem] border-primary/10 bg-gradient-to-br from-card via-card to-accent/30 shadow-retool-md">
              <CardHeader className="gap-2">
                <div className="flex flex-col gap-3 lg:flex-row lg:items-start lg:justify-between">
                  <div>
                    <CardDescription>Your gentle list for</CardDescription>
                    <CardTitle className="text-3xl">{selectedMonthName}</CardTitle>
                  </div>
                  <Button onClick={reloadGardenData} variant="outline" className="w-full rounded-full sm:w-auto">
                    <RefreshCw className="h-4 w-4" />
                    Refresh
                  </Button>
                </div>
                <p className="max-w-2xl text-sm text-muted-foreground">
                  {selectedMonth === 'all' ? 'Browse everything in the garden plan.' : seasonNote(selectedMonth)} Treat these as prompts, not chores.
                </p>
              </CardHeader>
              <CardContent>
                <div className="grid gap-3 lg:grid-cols-[1fr_220px_260px]">
                  <div className="relative">
                    <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
                    <Input
                      value={search}
                      onChange={(event) => setSearch(event.target.value)}
                      placeholder="Find a plant or job..."
                      className="rounded-full pl-9"
                    />
                  </div>
                  <Select value={selectedMonth} onValueChange={setSelectedMonth}>
                    <SelectTrigger className="rounded-full">
                      <SelectValue placeholder="Month" />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="all">All months</SelectItem>
                      {months.map((month) => (
                        <SelectItem key={month.value} value={month.value}>{month.label}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                  <Select value={selectedPlant} onValueChange={setSelectedPlant}>
                    <SelectTrigger className="rounded-full">
                      <SelectValue placeholder="Plant" />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="all">All plants</SelectItem>
                      {availablePlants.map((plant) => (
                        <SelectItem key={plant} value={plant}>{plant}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>
              </CardContent>
            </Card>

            <div className="grid gap-4 lg:grid-cols-2">
              {tasks.map((task, index) => {
                const taskStyle = getTaskStyle(index)
                return (
                <Card key={task.id} className={cn('group relative overflow-hidden rounded-[2rem] shadow-retool-sm transition-all hover:-translate-y-0.5 hover:shadow-retool-md', taskStyle.card)}>
                  <div aria-hidden="true" className={cn('absolute right-0 top-0 h-24 w-24 rounded-bl-full transition-colors', taskStyle.blob)} />
                  <Flower2 aria-hidden="true" className={cn('absolute right-5 top-5 h-6 w-6', taskStyle.icon)} />
                  <CardHeader className="relative pb-3">
                    <div className="flex items-start justify-between gap-3">
                      <div className="space-y-1">
                        <CardDescription>{compactText(task.timing_window)}</CardDescription>
                        <CardTitle className="text-xl leading-snug">{compactText(task.action)}</CardTitle>
                      </div>
                      <Badge variant={priorityVariant(task.priority)}>{priorityLabel(task.priority)}</Badge>
                    </div>
                  </CardHeader>
                  <CardContent className="relative space-y-4">
                    <div className="flex flex-wrap gap-2">
                      <Badge variant="outline"><Leaf className="mr-1 h-3 w-3" />{compactText(task.plant)}</Badge>
                      {task.task_type ? <Badge variant="secondary">{task.task_type}</Badge> : null}
                      {task.location ? <Badge variant="secondary">{task.location}</Badge> : null}
                    </div>
                    <p className="text-sm leading-6 text-muted-foreground">{compactText(task.detail)}</p>
                    <div className="grid gap-3 text-sm md:grid-cols-2">
                      {task.best_spot ? (
                        <div className={cn('rounded-2xl p-3', taskStyle.panel)}>
                          <div className="font-medium">Best spot</div>
                          <div className="mt-1 text-muted-foreground">{task.best_spot}</div>
                        </div>
                      ) : null}
                      {task.common_mistake ? (
                        <div className={cn('rounded-2xl p-3', taskStyle.panel)}>
                          <div className="font-medium">Try not to</div>
                          <div className="mt-1 text-muted-foreground">{task.common_mistake}</div>
                        </div>
                      ) : null}
                    </div>
                  </CardContent>
                </Card>
              )})}
            </div>

            {!tasksLoading && tasks.length === 0 ? (
              <Card className="rounded-[2rem] border-primary/10 bg-card/90 shadow-retool-md">
                <CardContent className="flex flex-col items-center gap-3 py-12 text-center text-muted-foreground">
                  <Flower2 className="h-10 w-10 text-primary" />
                  <div>No reminders match these filters.</div>
                  <Button onClick={() => setActiveTab('add')} variant="outline">Add something new</Button>
                </CardContent>
              </Card>
            ) : null}
          </TabsContent>

          <TabsContent value="add">
            <div className="grid gap-6 lg:grid-cols-[minmax(0,42rem)_minmax(20rem,1fr)]">
              <Card className="overflow-hidden rounded-[2rem] border-primary/10 bg-card/90 shadow-retool-md">
                <CardHeader>
                  <CardTitle className="flex items-center gap-2 text-2xl">
                    <span className="rounded-full bg-primary/10 p-2 text-primary">
                      <Plus className="h-5 w-5" />
                    </span>
                    Add something you want to grow
                  </CardTitle>
                  <CardDescription>
                    Tell me about seeds, a new plant, or something already in a pot. The app will research a seasonal care plan and add it to your garden list.
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <form onSubmit={handleAddPlant} className="space-y-5">
                    <div className="space-y-2">
                      <Label htmlFor="plantName">Plant or seed name</Label>
                      <Input
                        id="plantName"
                        value={plantName}
                        onChange={(event) => {
                          setPlantName(event.target.value)
                          setPlantIdentity('')
                          setAmbiguity(null)
                        }}
                        placeholder="e.g. tomatoes, lavender, tulip bulbs"
                        required
                      />
                    </div>

                    <div className="space-y-2">
                      <Label>Status</Label>
                      <Select
                        value={plantStatus}
                        onValueChange={(value) => {
                          setPlantStatus(value as PlantStatus)
                          setPlantIdentity('')
                          setAmbiguity(null)
                        }}
                      >
                        <SelectTrigger>
                          <SelectValue placeholder="Plant status" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="seeds">Seeds I want to cultivate</SelectItem>
                          <SelectItem value="existing">A plant I already have</SelectItem>
                          <SelectItem value="planned">Something I plan to buy</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>

                    <div className="space-y-2">
                      <Label>Will it live in a pot?</Label>
                      <Select value={growingPlace} onValueChange={(value) => setGrowingPlace(value as 'in_pot' | 'in_ground' | 'not_sure')}>
                        <SelectTrigger>
                          <SelectValue placeholder="Pot or ground" />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="not_sure">Not sure yet</SelectItem>
                          <SelectItem value="in_pot">In a pot or container</SelectItem>
                          <SelectItem value="in_ground">In the ground / border</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="climateNotes">Where it will grow</Label>
                      <Textarea
                        id="climateNotes"
                        value={climateNotes}
                        onChange={(event) => setClimateNotes(event.target.value)}
                        placeholder="Optional: city, hardiness zone, balcony, greenhouse, exposed spot..."
                      />
                    </div>

                    <div className="space-y-2">
                      <Label htmlFor="gardenNotes">Anything to bear in mind</Label>
                      <Textarea
                        id="gardenNotes"
                        value={gardenNotes}
                        onChange={(event) => setGardenNotes(event.target.value)}
                        placeholder="Optional: containers only, sunny windowsill, dry shade, pets, raised beds..."
                      />
                    </div>

                    {ambiguity ? (
                      <Alert>
                        <Sparkles className="h-4 w-4" />
                        <AlertTitle>{ambiguity.question}</AlertTitle>
                        <AlertDescription>
                          These options can need different care. Check images or copy a name first if you are not sure, then pick the closest match.
                        </AlertDescription>
                      </Alert>
                    ) : null}

                    {ambiguity ? (
                      <div className="grid gap-3">
                        {ambiguity.options.map((option) => (
                          <div key={option.search_term} className="rounded-2xl border border-border bg-background p-4">
                            <div className="flex flex-wrap items-center gap-2">
                              <span className="font-medium">{option.label}</span>
                              {option.latin_name ? <Badge variant="outline">{option.latin_name}</Badge> : null}
                            </div>
                            {option.care_difference ? <p className="mt-2 text-sm text-muted-foreground">{option.care_difference}</p> : null}
                            {option.why_it_matters ? <p className="mt-1 text-xs text-muted-foreground">{option.why_it_matters}</p> : null}
                            <div className="mt-4 flex flex-wrap gap-2">
                              <Button
                                type="button"
                                onClick={() => {
                                  setPlantIdentity(option.search_term)
                                  void addPlantToPlan(option.search_term).catch(() => undefined)
                                }}
                                disabled={addPlantLoading}
                                className="rounded-full"
                              >
                                Pick this plant
                              </Button>
                              <Button asChild type="button" variant="outline" className="rounded-full">
                                <a href={imageSearchUrl(option)} target="_blank" rel="noreferrer">
                                  <ExternalLink className="h-4 w-4" />
                                  See images
                                </a>
                              </Button>
                              <Button
                                type="button"
                                variant="outline"
                                className="rounded-full"
                                onClick={() => {
                                  void navigator.clipboard.writeText(plantIdentityText(option)).catch(() => undefined)
                                }}
                              >
                                <Copy className="h-4 w-4" />
                                Copy name
                              </Button>
                            </div>
                          </div>
                        ))}
                      </div>
                    ) : null}

                    {ambiguityError || addPlantError ? (
                      <Alert variant="destructive">
                        <AlertCircle className="h-4 w-4" />
                        <AlertTitle>Could not add this plant</AlertTitle>
                        <AlertDescription>{ambiguityError ?? addPlantError}</AlertDescription>
                      </Alert>
                    ) : null}

                    {addMessage ? (
                      <Alert>
                        <CheckCircle2 className="h-4 w-4" />
                        <AlertTitle>Added to the garden plan</AlertTitle>
                        <AlertDescription>{addMessage}</AlertDescription>
                      </Alert>
                    ) : null}

                    <Button disabled={addPlantLoading || ambiguityLoading} type="submit" className="rounded-full">
                      {addPlantLoading || ambiguityLoading ? <RefreshCw className="h-4 w-4 animate-spin" /> : <Sparkles className="h-4 w-4" />}
                      {ambiguityLoading ? 'Checking which plant...' : addPlantLoading ? 'Researching...' : 'Research and add it'}
                    </Button>
                  </form>
                </CardContent>
              </Card>

              <Card className="overflow-hidden rounded-[2rem] border-rose-200 bg-rose-50/80 shadow-retool-md dark:border-rose-900 dark:bg-rose-950/20">
                <CardHeader>
                  <CardTitle className="flex items-center gap-2 text-2xl">
                    <span className="rounded-full bg-rose-100 p-2 text-rose-700 dark:bg-rose-900/60 dark:text-rose-200">
                      <Trash2 className="h-5 w-5" />
                    </span>
                    Stop growing something
                  </CardTitle>
                  <CardDescription>
                    Remove a plant and all of its reminders if you no longer want it in the plan.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label>Plant to remove</Label>
                    <Select value={plantToRemove} onValueChange={setPlantToRemove}>
                      <SelectTrigger className="bg-background/80">
                        <SelectValue placeholder="Choose a plant" />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="none">Choose a plant</SelectItem>
                        {removablePlants.map((plant) => (
                          <SelectItem key={plant} value={plant}>{plant}</SelectItem>
                        ))}
                      </SelectContent>
                    </Select>
                  </div>

                  {removePlantError ? (
                    <Alert variant="destructive">
                      <AlertCircle className="h-4 w-4" />
                      <AlertTitle>Could not remove this plant</AlertTitle>
                      <AlertDescription>{removePlantError}</AlertDescription>
                    </Alert>
                  ) : null}

                  {removeMessage ? (
                    <Alert>
                      <CheckCircle2 className="h-4 w-4" />
                      <AlertTitle>Plant removed</AlertTitle>
                      <AlertDescription>{removeMessage}</AlertDescription>
                    </Alert>
                  ) : null}

                  <Button
                    type="button"
                    variant="destructive"
                    disabled={plantToRemove === 'none' || removePlantLoading}
                    onClick={handleRemovePlant}
                    className="rounded-full"
                  >
                    {removePlantLoading ? <RefreshCw className="h-4 w-4 animate-spin" /> : <Trash2 className="h-4 w-4" />}
                    {removePlantLoading ? 'Removing...' : 'Remove plant'}
                  </Button>
                </CardContent>
              </Card>
            </div>
          </TabsContent>
        </Tabs>
      </div>
    </main>
  )
}
