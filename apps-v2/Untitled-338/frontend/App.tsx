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
      <div className="pointer-events-none absolute inset-0 flex items-center justify-center">
        <div className="rounded-2xl border border-border bg-card/90 p-5 text-card-foreground shadow-retool-lg backdrop-blur-sm">
          <Sparkles className="h-10 w-10 text-primary" aria-label="App icon" />
        </div>
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
