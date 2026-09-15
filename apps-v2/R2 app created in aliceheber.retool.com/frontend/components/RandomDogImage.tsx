import { useEffect } from 'react'
import { RefreshCw } from 'lucide-react'

import { Button } from '../lib/shadcn/button'
import { Card, CardContent, CardHeader, CardTitle } from '../lib/shadcn/card'
import { useGetRandomDog } from '../hooks/backend/dogs'

type RandomDogData = {
  imageUrl: string
  status: string
}

function isRandomDogData(value: unknown): value is RandomDogData {
  return (
    typeof value === 'object' &&
    value !== null &&
    'imageUrl' in value &&
    typeof value.imageUrl === 'string' &&
    'status' in value &&
    typeof value.status === 'string'
  )
}

export function RandomDogImage() {
  const { data, loading, error, dataAccessErrors, trigger } = useGetRandomDog()
  const dogData = isRandomDogData(data) ? data : null

  useEffect(() => {
    void trigger({}, { skipCache: true })
  }, [trigger])

  return (
    <Card className="w-[280px] bg-card/95 text-card-foreground shadow-retool-lg backdrop-blur">
      <CardHeader className="flex-row items-center justify-between space-y-0 p-4 pb-2">
        <CardTitle className="text-base">Random dog</CardTitle>
        <Button
          aria-label="Load another random dog"
          disabled={loading}
          onClick={() => {
            void trigger({}, { skipCache: true })
          }}
          size="icon"
          variant="outline"
        >
          <RefreshCw className={loading ? 'animate-spin' : ''} />
        </Button>
      </CardHeader>
      <CardContent className="p-4 pt-2">
        <div className="flex h-40 items-center justify-center overflow-hidden rounded-md border border-border bg-muted">
          {loading && !dogData ? (
            <p className="px-4 text-center text-sm text-muted-foreground">Loading dog image...</p>
          ) : dogData ? (
            <img
              alt="Random dog from Dog CEO API"
              className="h-full w-full object-cover"
              src={dogData.imageUrl}
            />
          ) : (
            <p className="px-4 text-center text-sm text-muted-foreground">No dog image loaded yet.</p>
          )}
        </div>
        {error ? <p className="mt-2 text-sm text-destructive">Error: {error}</p> : null}
        {!error && dataAccessErrors.length > 0 ? (
          <p className="mt-2 text-sm text-destructive">
            Access restricted: {dataAccessErrors.map((accessError) => accessError.message).join('; ')}
          </p>
        ) : null}
      </CardContent>
    </Card>
  )
}
