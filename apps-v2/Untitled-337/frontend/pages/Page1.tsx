import { useEffect } from 'react'
import { useGetImageSignedUrl } from '../hooks/backend/storage'

type SignedUrlResult = {
  data?: {
    signedUrl?: string
  }
}

function getSignedUrl(result: unknown): string {
  const maybeResult = result as SignedUrlResult | null | undefined
  return maybeResult?.data?.signedUrl?.trim() ?? ''
}

function ImagePlaceholder({
  children,
  tone = 'default',
  shape = 'rectangle',
}: {
  children: string
  tone?: 'default' | 'error'
  shape?: 'rectangle' | 'round'
}) {
  const shapeClasses = shape === 'round' ? 'rounded-full' : 'rounded-sm'
  const toneClasses =
    tone === 'error'
      ? 'border-destructive/30 text-destructive'
      : 'border-border text-muted-foreground'

  return (
    <div
      className={`flex h-full w-full items-center justify-center border bg-card px-3 text-center text-xs ${shapeClasses} ${toneClasses}`}
    >
      {children}
    </div>
  )
}

export default function Page1() {
  const { data, loading, error, trigger } = useGetImageSignedUrl()
  const signedUrl = getSignedUrl(data)

  useEffect(() => {
    trigger()
  }, [trigger])

  return (
    <main className="min-h-screen w-screen overflow-hidden bg-background px-3 py-2 text-foreground">
      <section className="mt-[6px] flex w-full flex-col items-center gap-4">
        <div className="h-[70px] w-full max-w-[min(33.333vw,480px)] min-w-[220px]">
          {loading ? (
            <ImagePlaceholder>Loading image…</ImagePlaceholder>
          ) : error ? (
            <ImagePlaceholder tone="error">Unable to load image</ImagePlaceholder>
          ) : signedUrl ? (
            <img
              src={signedUrl}
              alt=""
              className="h-full w-full object-contain object-center"
              draggable={false}
            />
          ) : (
            <ImagePlaceholder>No image URL available</ImagePlaceholder>
          )}
        </div>

        <div className="h-28 w-28 overflow-hidden rounded-full border border-border bg-card shadow-retool-sm">
          {loading ? (
            <ImagePlaceholder shape="round">Loading image…</ImagePlaceholder>
          ) : error ? (
            <ImagePlaceholder tone="error" shape="round">Unable to load image</ImagePlaceholder>
          ) : signedUrl ? (
            <img
              src={signedUrl}
              alt=""
              className="h-full w-full rounded-full object-cover object-center"
              draggable={false}
            />
          ) : (
            <ImagePlaceholder shape="round">No image URL available</ImagePlaceholder>
          )}
        </div>
      </section>
    </main>
  )
}
