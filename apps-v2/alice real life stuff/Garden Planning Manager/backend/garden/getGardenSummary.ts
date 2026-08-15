type MonthlySummaryRow = {
  month_num: number | null
  month_name: string | null
  total_tasks: number | string
  essential_tasks: number | string
  recommended_tasks: number | string
  plant_count: number | string
}

type PlantSummaryRow = {
  plant: string | null
  latin_name: string | null
  task_count: number | string
  first_month: number | null
  last_month: number | null
  essential_count: number | string
}

export default async function(_req: { params: Record<string, never>; user: User }) {
  const [monthlyResult, plantResult] = await Promise.all([
    retoolDb3.query<MonthlySummaryRow>(
      `SELECT
        month_num,
        COALESCE(month_name, 'Unscheduled') AS month_name,
        COUNT(*) AS total_tasks,
        COUNT(*) FILTER (WHERE priority ILIKE 'Essential') AS essential_tasks,
        COUNT(*) FILTER (WHERE priority ILIKE 'Recommended') AS recommended_tasks,
        COUNT(DISTINCT NULLIF(plant, '')) AS plant_count
      FROM garden_tasks
      GROUP BY month_num, month_name
      ORDER BY month_num NULLS LAST`,
    ),
    retoolDb3.query<PlantSummaryRow>(
      `SELECT
        COALESCE(NULLIF(plant, ''), 'Unspecified') AS plant,
        MAX(NULLIF(latin_name, '')) AS latin_name,
        COUNT(*) AS task_count,
        MIN(month_num) AS first_month,
        MAX(month_num) AS last_month,
        COUNT(*) FILTER (WHERE priority ILIKE 'Essential') AS essential_count
      FROM garden_tasks
      GROUP BY COALESCE(NULLIF(plant, ''), 'Unspecified')
      ORDER BY task_count DESC, plant
      LIMIT 12`,
    ),
  ])

  return {
    monthly: monthlyResult.data.map((row) => ({
      month_num: row.month_num,
      month_name: row.month_name,
      total_tasks: Number(row.total_tasks),
      essential_tasks: Number(row.essential_tasks),
      recommended_tasks: Number(row.recommended_tasks),
      plant_count: Number(row.plant_count),
    })),
    plants: plantResult.data.map((row) => ({
      plant: row.plant,
      latin_name: row.latin_name,
      task_count: Number(row.task_count),
      first_month: row.first_month,
      last_month: row.last_month,
      essential_count: Number(row.essential_count),
    })),
  }
}
