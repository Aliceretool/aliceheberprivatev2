export default function ProtectedMessage() {
  return (
    <main className="min-h-screen bg-background p-6">
      <textarea
        aria-label="Message"
        className="min-h-32 w-full resize-none rounded-lg border border-input bg-background px-4 py-3 text-lg leading-relaxed text-foreground shadow-retool-sm outline-none ring-offset-background focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
        readOnly
        value="app created in aliceheber.retool.com and then protected"
      />
      <textarea
        aria-label="Edit message"
        className="mt-4 min-h-32 w-full resize-none rounded-lg border border-input bg-background px-4 py-3 text-lg leading-relaxed text-foreground shadow-retool-sm outline-none ring-offset-background focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
        readOnly
        value="edit from spacetwo"
      />
      <textarea
        aria-label="Aliceheber edit message"
        className="mt-4 min-h-32 w-full resize-none rounded-lg border border-input bg-background px-4 py-3 text-lg leading-relaxed text-foreground shadow-retool-sm outline-none ring-offset-background focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2"
        readOnly
        value="edit from aliceheber"
      />
    </main>
  )
}
