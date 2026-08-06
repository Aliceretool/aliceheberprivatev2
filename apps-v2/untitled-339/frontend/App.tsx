export default function App() {
  return (
    <main className="flex min-h-screen items-center justify-center bg-background p-6 text-foreground">
      <label className="sr-only" htmlFor="created-message">
        App creation message
      </label>
      <input
        id="created-message"
        type="text"
        readOnly
        value="app created on aliceheber.retool.com"
        className="w-full max-w-md rounded-lg border border-input bg-card px-4 py-3 text-center text-lg text-card-foreground shadow-retool-sm outline-none ring-offset-background focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
      />
    </main>
  )
}
