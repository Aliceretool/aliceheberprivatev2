/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

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
      <div className="absolute inset-0 flex items-center justify-center px-6 text-center">
        <p className="rounded-2xl border border-border/70 bg-card/80 px-6 py-4 text-2xl font-semibold text-card-foreground shadow-lg backdrop-blur-sm sm:text-4xl">
          this is a 2nd R2 app from aliceheber.retool.com
        </p>
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
