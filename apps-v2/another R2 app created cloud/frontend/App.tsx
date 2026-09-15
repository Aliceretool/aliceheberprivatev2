/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

import { Star } from 'lucide-react'

import { StarterCanvas } from './components/StarterCanvas'

export default function App() {
  return (
    <div
      style={{
        fontFamily: 'sans-serif',
        padding: 0,
        margin: 0,
        background: '#FA8072', // StarterCanvas u_gray
        position: 'relative',
        width: '100vw',
        height: '100vh',
        overflow: 'hidden',
      }}
    >
      <StarterCanvas fadeIn={false} />
      <div className="absolute right-8 top-8 rounded-full border border-border/70 bg-card/80 p-4 text-primary shadow-lg backdrop-blur-sm">
        <Star className="h-10 w-10 fill-current" aria-label="Star" />
      </div>
      <div className="absolute bottom-8 left-8 rounded-full border border-border/70 bg-card/80 p-4 text-primary shadow-lg backdrop-blur-sm">
        <Star className="h-10 w-10 fill-current" aria-label="Star" />
      </div>
      <div className="absolute inset-0 flex items-center justify-center px-6 text-center">
        <p className="rounded-2xl border border-border/70 bg-card/80 px-6 py-4 text-2xl font-semibold text-card-foreground shadow-lg backdrop-blur-sm sm:text-4xl">
          this is a 2nd R2 app from aliceheber.retool.com
        </p>
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
