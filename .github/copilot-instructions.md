# AI Instructions - Astro Tailwind shadcn/ui Template

## Table of Contents
- [About & Stack](#about-stack)
- [Core Principles](#core-principles)
- [Project Structure](#project-structure)
- [Decision Trees](#decision-trees)
- [Agents & Workflows](#agents--workflows)
- [Code Conventions](#code-conventions)
- [Template Usage](#template-usage)

## About & Stack

**🚀 STARTER TEMPLATE** for new Astro projects with modern tooling and best practices.

**Technology**: Astro + React | Tailwind CSS v4 | shadcn/ui (Radix UI) | Lucide Icons | Bun | TypeScript

**Key Features**:
- Astro-first architecture (SSR-optimized)
- shadcn/ui component integration
- Tailwind CSS v4 pre-configured
- TypeScript throughout
- File-based routing with semantic HTML

## Project Structure

```
src/
├── components/       # Custom components
│   └── ui/          # shadcn/ui components (use mcp-shadcn)
├── layouts/         # Page layouts
├── lib/             # Utilities (cn, etc.)
├── pages/           # File-based routing
└── styles/          # Global CSS + Tailwind
```

## Agents & Workflows

Specialized agents in `.github/agents/` with MCP access to Astro docs + shadcn/ui APIs:

| Agent | Focus | Contact For |
|-------|-------|-------------|
| **@ComponentSmith** | Component creation | Astro/React decisions, shadcn/ui integration |
| **@Stylist** | Design & styling | Tailwind patterns, design tokens |
| **@DomainExpert** | Accessibility | Semantic HTML, ARIA, keyboard nav |
| **@PerformanceGuard** | Performance | Hydration strategy, client directives |
| **@Architect** | Project structure | Conventions, naming, philosophy |

**Quick Workflows**:
- Component creation → Ask **@ComponentSmith**
- Style guidance → Ask **@Stylist**
- Accessibility check → Ask **@DomainExpert**
- Performance optimization → Ask **@PerformanceGuard**
- Convention confirmation → Ask **@Architect**

**Detailed Guidance**: See agent files in `.github/agents/` for decision trees and code examples.

## Core Principles

### 🚨 ASTRO FIRST
**Static/SEO content** → Astro | **Complex interactive features** → React

| Scenario | Use |
|----------|-----|
| Static content, layouts, SEO pages | Astro (.astro) |
| Forms with simple interactions | Astro first |
| Content without client-side state | Astro (.astro) |
| Complex interactivity, state, real-time | React (.tsx) |

### 🛡️ SHADCN/UI FIRST
**Accessibility + consistency over custom code** (use MCP: mcp-shadcn)

| Decision | Action |
|----------|--------|
| shadcn/ui component exists? | Use it |
| Can compose existing components? | Compose them |
| Static element without interactivity? | Convert to Astro wrapper |
| Requires custom logic? | Build following shadcn/ui patterns |

### 🎨 TAILWIND FIRST
shadcn/ui → Tailwind utilities → CSS variables → Global CSS → Custom CSS
- Use v4 utility-first approach
- `cn()` for conditional classes
- CSS variables for theming only

### 🏗️ SEMANTIC FIRST
Semantic HTML → Forms → Interactive → Content → Generic containers
- Always validate ARIA + keyboard navigation
- Leverage Radix UI primitives in shadcn/ui

## Decision Trees

### Component Technology Choice
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
  → Semantic element available? (<nav>, <article>, etc.) → Use it
  → Form interaction? → Use proper form elements
  → Interactive feature? → Use <button> or interactive semantics
  → Generic container? → Use <div> + ARIA if needed
```

## Code Conventions

**File Naming**:
- Astro components: `PascalCase.astro`
- React components: `PascalCase.tsx`
- Pages: `lowercase.astro`
- Utilities: `camelCase.ts`

**Component Organization**:
- `src/components/ui/` → shadcn/ui components (add via `mcp-shadcn`)
- `src/components/` → Custom components
- Use aliases: `@/components`, `@/lib/utils`
- Export with TypeScript interfaces

**Icons**: Lucide React (replace inline SVG)

**TypeScript**: Required for all new files

**Example & Documentation Policy**: Only create when explicitly requested by user


## Configuration

- **Tailwind CSS**: v4 (latest)
- **React**: v19
- **shadcn/ui**: neutral variant
- **Package Manager**: Bun
- **TypeScript**: Enabled throughout

## Template Usage

**Starting a new project**:
1. Clone/fork as starting point
2. Update `package.json` metadata
3. Customize `src/layouts/Layout.astro`
4. Replace placeholder content in `src/pages/index.astro`
5. Add components following established patterns
6. Configure deployment

**Features ready to use**:
- ✅ Astro + React integration
- ✅ Tailwind CSS v4 optimized
- ✅ shadcn/ui setup
- ✅ TypeScript configured
- ✅ File-based routing
- ✅ Development scripts

**Customization**: Maintain Astro-first philosophy, folder structure, naming conventions, aliases, and existing configurations.
