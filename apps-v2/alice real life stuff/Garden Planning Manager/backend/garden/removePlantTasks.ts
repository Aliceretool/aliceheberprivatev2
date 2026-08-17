type Params = {
  plant: string
}

type DeletedTask = {
  id: number
  plant: string | null
}

export default async function(req: { params: Params; user: User }) {
  const plant = req.params.plant.trim()
  if (plant.length < 1 || plant === 'all' || plant === 'Unspecified' || plant === 'All plants') {
    throw new Error('Choose a specific plant to remove.')
  }

  const result = await retoolDb3.query<DeletedTask>(
    `DELETE FROM garden_tasks
     WHERE plant = $1
     RETURNING id, plant`,
    [plant],
  )

  return {
    removedPlant: plant,
    deletedCount: result.data.length,
    deletedIds: result.data.map((row) => row.id),
    message: result.data.length === 0
      ? `No reminders found for ${plant}.`
      : `Removed ${result.data.length} reminder${result.data.length === 1 ? '' : 's'} for ${plant}.`,
  }
}
