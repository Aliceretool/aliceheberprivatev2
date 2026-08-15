import { Route, Routes } from 'react-router-dom'
import GardenDashboard from './pages/GardenDashboard'

export default function App() {
  return (
    <Routes>
      <Route path="*" element={<GardenDashboard />} />
    </Routes>
  )
}
