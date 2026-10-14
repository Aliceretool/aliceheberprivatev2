import { Palette, Sparkles, Star } from 'lucide-react'

import { Badge } from './lib/shadcn/badge'
import { Button } from './lib/shadcn/button'
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from './lib/shadcn/card'

export default function App() {
  return (
    <main className="flex min-h-screen items-center justify-center bg-background p-6 text-foreground">
      <Card className="w-full max-w-md overflow-hidden">
        <CardHeader className="gap-3">
          <div className="flex items-center justify-between gap-4">
            <div className="flex h-12 w-12 items-center justify-center rounded-full bg-primary/10 text-primary">
              <Palette className="h-6 w-6" aria-hidden="true" />
            </div>
            <div className="flex items-center gap-2">
              <Star className="h-5 w-5 fill-primary text-primary" aria-hidden="true" />
              <Badge variant="secondary">Test theme</Badge>
            </div>
          </div>
          <div className="space-y-2">
            <CardTitle>Theme preview app</CardTitle>
            <CardDescription>
              A simple one-component sample using the Retool test theme tokens.
            </CardDescription>
          </div>
        </CardHeader>
        <CardContent>
          <div className="rounded-lg border border-border bg-muted/40 p-4 text-sm text-muted-foreground">
            Semantic colors, spacing, borders, and button styles are all pulled
            from the active theme so the card adapts automatically.
          </div>
        </CardContent>
        <CardFooter className="justify-between gap-3">
          <Button variant="outline">Secondary</Button>
          <Button>
            <Sparkles className="h-4 w-4" aria-hidden="true" />
            Primary action
          </Button>
        </CardFooter>
      </Card>
    </main>
  )
}
