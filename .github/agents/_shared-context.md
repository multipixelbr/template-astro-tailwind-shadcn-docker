# Shared Core Knowledge - All Agents

> **This file is the single source of truth for all agents.** Each agent references this file for core project context, conventions, and principles. Updates here propagate to all agents automatically.

## MCP Availability

This project has access to the following MCP servers (configured in `.vscode/mcp.json`):

- **Astro docs** (`https://mcp.docs.astro.build/mcp`) — Official Astro framework documentation
- **shadcn** (`bunx --bun shadcn@latest mcp`) — shadcn/ui component registry and APIs

Use these MCP servers to look up official documentation, component APIs, and best practices before recommending custom solutions.

## Technology Stack

Check `package.json` for exact versions. Current stack:

- **Framework**: Astro 5.18.0
- **Astro integrations**: React integration (`@astrojs/react` 4.4.2)
- **UI Library**: React 19.2.4 + React DOM
- **Styling**: Tailwind CSS v4.2.1 (via `@tailwindcss/vite`)
- **UI Components**: shadcn/ui (New York style) with Radix UI primitives
- **Icons**: Lucide React 0.575.0
- **Utilities**: `class-variance-authority` 0.7.1, `clsx` 2.1.1, `tailwind-merge` 3.5.0
- **Package Manager**: Bun
- **TypeScript**: Enabled
- **Server Adapter**: `@astrojs/node` 9.5.4 (standalone mode)

## Project Structure

```
src/
├── components/
│   └── ui/           # shadcn/ui components
├── layouts/
│   └── Layout.astro  # Base layout
├── lib/
│   └── utils.ts      # Utility functions (cn, etc.)
├── pages/
│   └── index.astro   # Pages (file-based routing)
└── styles/
    └── global.css    # Global styles and Tailwind base
```

## File Naming Conventions

- **Astro components**: PascalCase with `.astro` extension (e.g., `MyComponent.astro`)
- **React components**: PascalCase with `.tsx` extension (e.g., `MyWidget.tsx`)
- **Pages**: lowercase with `.astro` extension (e.g., `about.astro`)
- **Utilities**: camelCase with `.ts` extension (e.g., `formatDate.ts`)

## Import Aliases

All agents must respect these configured aliases configured in `tsconfig.json` and `components.json`:

- `@/components` → `src/components/`
- `@/components/ui` → `src/components/ui/`
- `@/lib/utils` → `src/lib/utils.ts`
- `@/lib` → `src/lib/`
- `@/hooks` → `src/hooks/`
- `@/layouts` → `src/layouts/`

## Example Files Policy

- **📝 EXAMPLE FILES**: Only create example, demo, or sample files when explicitly requested by the user.
- **📋 DOCUMENTATION FILES**: Only create implementation documentation (`.md` files) when explicitly requested by the user.
- **Default behavior**: Focus on the actual implementation, not examples or documentation.

Guidelines:
- **Default behavior**: Focus on the actual implementation, not examples or documentation
- **When to create examples**: Only when the user specifically asks for examples, demos, or sample files
- **When to create documentation**: Only when the user specifically asks for implementation documentation, guides, or explanatory markdown files
- **Example file naming**: Prefix with `example-` or place in `examples/` directory when created
- **Documentation file naming**: Use descriptive names like `IMPLEMENTATION.md`, `GUIDE.md`, or place in `docs/` directory when created

## The Four Core Principles

### 🚨 ASTRO FIRST PRINCIPLE

Always ask: "Can this be done with Astro before considering React? If I will use shadcn/ui, can this component be converted to an Astro lossless equivalent component without Vanilla JS overhead?"

**Decision Tree:**
1. Static content, layouts, SEO pages → Use Astro (.astro)
2. Forms with simple interactions → Try Astro first with web standards
3. Content that doesn't need client-side state → Use Astro (.astro)
4. Complex interactivity, state management, real-time updates → Use React (.tsx)

### 🛡️ **SHADCN/UI FIRST PRINCIPLE**: 
Always prioritize shadcn/ui components over custom implementations for accessibility and consistency.

**Component Selection Decision Tree:**
1. Does a shadcn/ui component exist for this functionality? → Use shadcn/ui component
2. Can the functionality be achieved by composing existing shadcn/ui components? → Compose them
3. Is this a simple static element without interactivity? → Consider converting shadcn/ui component to Astro component with Tailwind
4. Does this require custom complex logic not available in shadcn/ui? → Build custom component following shadcn/ui patterns

### 🎨 **TAILWIND-FIRST APPROACH**:
Always prioritize Tailwind CSS utility classes over custom CSS

**CSS Priority Rules:**
1. **shadcn/ui components** - First choice for UI elements
2. **Tailwind utilities** - Primary choice for ALL styling
3. **CSS variables** - For theming and design tokens only
4. **Global CSS** - Only for base styles and resets in `src/styles/global.css`
5. **Local/Custom CSS** - Last resort, only for very specific edge cases

### 🏗️ **SEMANTIC-FIRST PRINCIPLE**:
Always use proper semantic HTML elements before considering generic divs/spans

**HTML Element Priority:**
1. **Semantic elements** - `<header>`, `<nav>`, `<main>`, `<article>`, `<section>`, `<aside>`, `<footer>`
2. **Form elements** - `<form>`, `<fieldset>`, `<legend>`, `<label>`, `<input>`, `<button>`
3. **Interactive elements** - `<button>`, `<a>`, `<details>`, `<summary>`
4. **Content elements** - `<h1-h6>`, `<p>`, `<ul>`, `<ol>`, `<li>`, `<dl>`, `<dt>`, `<dd>`
5. **Generic containers** - `<div>`, `<span>` only when semantic options don't apply

## Code Style & Standards

- **TypeScript**: Use for all new files
- **Icons**: Lucide React (replace inline SVG icons)
- **Utilities**: Use `class-variance-authority` for variants and `cn()` for className management
- **Component Organization**:
  - shadcn/ui components: `src/components/ui/`
  - Custom components: `src/components/`
  - Always use configured aliases
  - Export with proper TypeScript interfaces
