/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

import { Sparkles } from 'lucide-react'

import { StarterCanvas } from './components/StarterCanvas'

export default function App() {
  return (
    <div
      style={{
        fontFamily: 'sans-serif',
        padding: 0,
        margin: 0,
        background: '#F0EFEE', // StarterCanvas u_gray
        position: 'relative',
        width: '100vw',
        height: '100vh',
        overflow: 'hidden',
      }}
    >
      <StarterCanvas fadeIn={false} />
      <div className="pointer-events-none absolute inset-0 flex flex-col items-center justify-center gap-3">
        <div className="rounded-2xl border border-border bg-card/90 p-5 text-card-foreground shadow-retool-lg backdrop-blur-sm">
          <Sparkles className="h-10 w-10 text-primary" aria-label="App icon" />
        </div>
        <p className="text-sm text-muted-foreground">edited in spacetwo</p>
        <p className="text-sm text-muted-foreground">5 aug edit from instance spacetwo</p>
        <p className="text-sm text-muted-foreground">2nd edit on 5 aug from instance spacetwo</p>
        <p className="text-sm text-muted-foreground">edit from spacetwo on 6 aug 12.20</p>
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
