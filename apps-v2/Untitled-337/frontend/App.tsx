import { Route, Routes } from 'react-router-dom'
import './appTheme.css'
import Page1 from './pages/Page1'

export default function App() {
  return (
    <Routes>
      <Route path="/" element={<Page1 />} />
      <Route path="*" element={<Page1 />} />
    </Routes>
  )
}
