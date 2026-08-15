import { checkPlantAmbiguity } from './research'

type Params = {
  plantName: string
  plantStatus: 'seeds' | 'existing' | 'planned'
  climateNotes?: string
  gardenNotes?: string
  plantIdentity?: string
  growingPlace?: 'in_pot' | 'in_ground' | 'not_sure'
}

export default async function(req: { params: Params; user: User }) {
  const plantName = req.params.plantName.trim()
  if (plantName.length < 2) {
    throw new Error('Enter a plant name with at least 2 characters.')
  }

  return checkPlantAmbiguity({
    plantName,
    plantStatus: req.params.plantStatus,
    climateNotes: req.params.climateNotes?.trim() ?? '',
    gardenNotes: req.params.gardenNotes?.trim() ?? '',
    plantIdentity: req.params.plantIdentity?.trim() ?? '',
    growingPlace: req.params.growingPlace ?? 'not_sure',
  })
}
