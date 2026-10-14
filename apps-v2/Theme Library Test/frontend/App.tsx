/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

import { Heart, Smile } from 'lucide-react'

import { Input } from './lib/shadcn/input'

type RetoolRuntimeContext = {
  configVars?: Record<string, string | undefined>
}

const getConfiguredEmailTest = (): string => {
  const context = (globalThis as { retoolContext?: RetoolRuntimeContext }).retoolContext
  return context?.configVars?.['emailTest'] ?? ''
}

export default function App() {
  const configuredEmailTest = getConfiguredEmailTest()

  return (
    <div
      style={{
        fontFamily: 'sans-serif',
        padding: 0,
        margin: 0,
        background: 'hsl(var(--background))',
        color: 'hsl(var(--foreground))',
        position: 'relative',
        width: '100vw',
        height: '100vh',
        overflow: 'hidden',
      }}
    >
      <div className="absolute inset-0 flex items-center justify-center p-6">
        <div className="w-full max-w-xl rounded-2xl border border-border bg-card p-8 text-card-foreground shadow-lg">
          <div className="mb-6 text-center">
            <p className="text-sm font-medium uppercase tracking-wide text-muted-foreground">Theme preview</p>
            <h1 className="mt-2 text-3xl font-bold text-foreground">New theme is active</h1>
            <p className="mt-2 text-sm text-muted-foreground">
              These controls use the current theme tokens from your org theme.
            </p>
          </div>

          <label className="mb-2 block text-sm font-medium" htmlFor="email-test-config-value">
            Configuration variable emailTest
          </label>
          <Input
            id="email-test-config-value"
            readOnly
            value={configuredEmailTest}
            placeholder="emailTest is not set"
            className="mb-6 text-center text-lg"
          />

          <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
            <div className="rounded-lg border border-border bg-primary p-4 text-center text-sm font-medium text-primary-foreground">
              Primary
            </div>
            <div className="rounded-lg border border-border bg-secondary p-4 text-center text-sm font-medium text-secondary-foreground">
              Secondary
            </div>
            <div className="rounded-lg border border-border bg-accent p-4 text-center text-sm font-medium text-accent-foreground">
              Accent
            </div>
            <div className="rounded-lg border border-border bg-muted p-4 text-center text-sm font-medium text-muted-foreground">
              Muted
            </div>
          </div>
        </div>
      </div>
      <div
        aria-label="Star emoji"
        className="absolute right-8 top-8 flex h-20 w-20 items-center justify-center rounded-full border border-border bg-card text-5xl shadow-lg"
        role="img"
      >
        ⭐
      </div>
      <div
        aria-label="Smiley face"
        className="absolute right-32 top-8 flex h-20 w-20 items-center justify-center rounded-full border border-border bg-card text-primary shadow-lg"
        role="img"
      >
        <Smile aria-hidden="true" className="h-12 w-12" strokeWidth={2.4} />
      </div>
      <div
        aria-label="Heart icon"
        className="absolute right-56 top-8 flex h-20 w-20 items-center justify-center rounded-full border border-border bg-card text-primary shadow-lg"
        role="img"
      >
        <Heart aria-hidden="true" className="h-12 w-12" strokeWidth={2.4} />
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
