export type GardenTaskRow = {
  id: number
  sort_key: number | null
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

export type GardenTaskInsert = Omit<GardenTaskRow, 'id'>

export const monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
] as const

export function monthNameFromNumber(monthNumber: number): string {
  return monthNames[monthNumber - 1] ?? 'Unknown'
}

export function toMonthNumber(value: unknown): number {
  const parsed = typeof value === 'number' ? value : Number(value)
  if (!Number.isInteger(parsed) || parsed < 1 || parsed > 12) {
    return 1
  }
  return parsed
}

export function toDayOfMonth(value: unknown): number {
  const parsed = typeof value === 'number' ? value : Number(value)
  if (!Number.isInteger(parsed) || parsed < 1 || parsed > 31) {
    return 1
  }
  return parsed
}

export function toNullableInteger(value: unknown): number | null {
  if (value === null || value === undefined || value === '') {
    return null
  }
  const parsed = typeof value === 'number' ? value : Number(value)
  return Number.isFinite(parsed) ? Math.round(parsed) : null
}

export function toText(value: unknown): string {
  if (value === null || value === undefined) {
    return ''
  }
  return String(value).trim()
}
