/** @jsxRuntime automatic */
/* eslint-disable react-perf/jsx-no-new-object-as-prop */

import { StarterCanvas } from './components/StarterCanvas'
import { RandomDogImage } from './components/RandomDogImage'

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
      <div
        style={{
          position: 'absolute',
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          zIndex: 1,
          color: '#1F2937',
          fontSize: '20px',
          fontWeight: 600,
          textAlign: 'center',
          pointerEvents: 'none',
        }}
      >
        this app was created in aliceheber.retool.com
      </div>
      <div
        style={{
          position: 'absolute',
          top: '56%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          zIndex: 1,
          color: '#374151',
          fontSize: '16px',
          fontWeight: 500,
          textAlign: 'center',
          pointerEvents: 'none',
        }}
      >
        edited on 15 sept and synced to other instances
      </div>
      <div
        style={{
          position: 'absolute',
          top: '72%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          zIndex: 1,
        }}
      >
        <RandomDogImage />
      </div>
    </div>
  )
}
/* eslint-enable react-perf/jsx-no-new-object-as-prop */
