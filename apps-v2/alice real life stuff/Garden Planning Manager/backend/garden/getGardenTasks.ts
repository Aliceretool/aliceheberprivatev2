import type { GardenTaskRow } from './types'

type Params = {
  search?: string
  month?: number | 'all'
  plant?: string
}

export default async function(req: { params: Params; user: User }) {
  const search = typeof req.params.search === 'string' ? req.params.search.trim() : ''
  const selectedMonth = req.params.month
  const selectedPlant = typeof req.params.plant === 'string' ? req.params.plant.trim() : ''

  const filters: string[] = []
  const values: unknown[] = []

  if (typeof selectedMonth === 'number' && selectedMonth >= 1 && selectedMonth <= 12) {
    values.push(selectedMonth)
    filters.push(`month_num = $${values.length}`)
  }

  if (selectedPlant !== '' && selectedPlant !== 'all') {
    values.push(selectedPlant)
    filters.push(`plant = $${values.length}`)
  }

  if (search !== '') {
    values.push(`%${search}%`)
    const placeholder = `$${values.length}`
    filters.push(`(
      plant ILIKE ${placeholder}
      OR latin_name ILIKE ${placeholder}
      OR action ILIKE ${placeholder}
      OR detail ILIKE ${placeholder}
      OR task_type ILIKE ${placeholder}
      OR location ILIKE ${placeholder}
    )`)
  }

  const whereClause = filters.length > 0 ? `WHERE ${filters.join(' AND ')}` : ''
  const result = await retoolDb3.query<GardenTaskRow>(
    `SELECT
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
      repeats_annually
    FROM garden_tasks
    ${whereClause}
    ORDER BY month_num NULLS LAST, day_of_month NULLS LAST, sort_key NULLS LAST, plant NULLS LAST, id`,
    values,
  )

  return result.data
}
