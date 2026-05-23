# Project Agents & Guidelines

This directory contains the project's agentic instructions — a set of specialized agents and shared conventions that any AI coding tool can use to assist with this codebase.

## Quick Start

Start here to understand the project — then delegate specialized work to the appropriate agent.

### Stack

| Layer | Technology |
|-------|------------|
| Framework | Astro 5 + React 19 |
| Styling | Tailwind CSS v4 |
| UI Components | shadcn/ui (Radix UI / New York style) |
| Icons | Lucide React |
| Utilities | class-variance-authority, clsx, tailwind-merge |
| Package Manager | Bun |
| Language | TypeScript |

### Project Structure

```
src/
├── components/
│   └── ui/           # shadcn/ui components only
├── layouts/
├── lib/
├── pages/
└── styles/
```

### The Four Core Principles

1. **ASTRO FIRST** — Static/layouts → Astro. Complex interactivity → React.
2. **SHADCN/UI FIRST** — Use shadcn/ui before composing custom. Build custom only as last resort.
3. **TAILWIND-FIRST** — shadcn/ui → Tailwind utilities → CSS variables → Global CSS → Custom CSS.
4. **SEMANTIC-FIRST** — Semantic HTML → Forms → Interactive → Content → Generic containers.

## Agent Registry

| Agent | File | Expertise |
|-------|------|-----------|
| **Architect** | [agents/architect.md](agents/architect.md) | Project structure, conventions, template philosophy |
| **ComponentSmith** | [agents/componentsmith.md](agents/componentsmith.md) | Component creation, Astro/React decisions, shadcn/ui patterns |
| **DomainExpert** | [agents/domainexpert.md](agents/domainexpert.md) | Accessibility, semantic HTML, ARIA, keyboard nav |
| **PerformanceGuard** | [agents/performanceguard.md](agents/performanceguard.md) | Hydration strategy, client directives, bundle impact |
| **Stylist** | [agents/stylist.md](agents/stylist.md) | Tailwind patterns, CSS variables, responsive design |

All agents inherit shared context from [agents/_shared-context.md](agents/_shared-context.md).

## Decision Trees

### Component Technology

```
Needs client interactivity?
  → YES: Needs shadcn/ui component? → Use React with shadcn/ui
  → NO: Use Astro component
Needs state management?
  → YES: Use React (.tsx) with client: directive
  → NO: Astro is sufficient
```

### Styling Strategy

```
Need a UI element?
  → Does shadcn/ui have it? → Use shadcn/ui component
  → Can compose existing? → Compose them
  → Styling/markup only? → Use Tailwind utility classes
  → Custom logic? → Build with shadcn/ui patterns
```

### Semantic Structure

```
Content structure needed?
  → Semantic element available? (`<nav>`, `<article>`, etc.) → Use it
  → Form interaction? → Use proper form elements
  → Interactive feature? → Use `<button>` or interactive semantics
  → Generic container? → Use `<div>` + ARIA if needed
```

## Code Conventions

**File Naming**:
- Astro components: `PascalCase.astro`
- React components: `PascalCase.tsx`
- Pages: `lowercase.astro`
- Utilities: `camelCase.ts`

**Component Organization**:
- `src/components/ui/` → shadcn/ui components (add via `shadcn add`)
- `src/components/` → Custom components
- Use aliases: `@/components`, `@/lib/utils`
- Export with TypeScript interfaces

**Icons**: Lucide React (replace inline SVG)

**TypeScript**: Required for all new files

**Example & Documentation Policy**: Only create when explicitly requested by user

## MCP Servers

This project is configured with MCP servers for:
- **Astro docs** — Official Astro framework documentation
- **shadcn** — shadcn/ui component registry and APIs

These are available to any agentic tool that reads the project configuration.