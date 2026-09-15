type Params = Record<string, never>

type DogApiResponse = {
  message: string
  status: string
}

export default async function(_req: { params: Params; user: User }) {
  const result = await randomDogsApi.rawRequest<DogApiResponse>({
    path: '',
    method: 'GET',
  })

  return {
    imageUrl: result.data.message,
    status: result.data.status,
  }
}
