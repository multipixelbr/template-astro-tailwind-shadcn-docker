# Copilot Instructions - Astro Tailwind shadcn/ui Template

## Project Overview

**🚀 This is a STARTER TEMPLATE** for creating new Astro projects with modern tooling and best practices.

This template provides a pre-configured Astro project with Tailwind CSS v4 and shadcn/ui components integration. It serves as a foundation for building new web projects with optimal performance and developer experience.

### Template Purpose

- **Kickstart new projects** with a proven, modern stack
- **Standardize development practices** across projects
- **Provide ready-to-use configurations** for Astro, Tailwind, and shadcn/ui
- **Implement Astro-first development philosophy** from the start
- **Ensure consistent project structure** and coding standards

## Technology Stack

- **Framework**: Astro 5.9.4
- **React**: 19.1.0 (for interactive components)
- **Styling**: Tailwind CSS v4.1.10
- **UI Components**: shadcn/ui with Radix UI primitives
- **Icons**: Lucide React
- **Package Manager**: Bun
- **TypeScript**: Enabled

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

## Development Guidelines

### File Naming Conventions

- **Astro components**: PascalCase with `.astro` extension
- **React components**: PascalCase with `.tsx` extension
- **Pages**: lowercase with `.astro` extension
- **Utilities**: camelCase with `.ts` extension

### Component Development Priority

**🚨 ASTRO FIRST PRINCIPLE**: Always ask yourself: "Can this be done with Astro before considering React?"

**Decision Tree:**

1. **Static content, layouts, SEO pages** → Use Astro (.astro)
2. **Forms with simple interactions** → Try Astro first with web standards
3. **Content that doesn't need client-side state** → Use Astro (.astro)
4. **Complex interactivity, state management, real-time updates** → Use React (.tsx)

**Implementation:**

- **Astro Components**: Default choice, use for static content and simple interactions
- **React Components**: Only when Astro cannot handle the requirement, always use `client:` directive
- **Hybrid Approach**: Astro as shell/layout, embed React components where needed (islands architecture)

### shadcn/ui Integration

- Components are located in `src/components/ui/`
- Use the configured aliases: `@/components`, `@/lib/utils`, etc.
- Follow shadcn/ui naming conventions and structure
- Leverage Radix UI primitives for accessibility

### Styling Guidelines

**🎨 TAILWIND-FIRST APPROACH**: Always prioritize Tailwind CSS utility classes over custom CSS

**CSS Priority Rules:**

1. **Tailwind utilities** - Primary choice for ALL styling
2. **CSS variables** - For theming and design tokens only
3. **Global CSS** - Only for base styles and resets in `src/styles/global.css`
4. **Local/Custom CSS** - Last resort, only for very specific edge cases

**Implementation:**

- Use Tailwind CSS v4 utility classes as the default
- Leverage Tailwind's responsive and state variants (`hover:`, `md:`, etc.)
- Use the `cn()` utility function for conditional classes
- CSS variables enabled for theming (base color: neutral)
- No prefix configured for Tailwind classes

### Semantic HTML Guidelines

**🏗️ SEMANTIC-FIRST PRINCIPLE**: Always use proper semantic HTML elements before considering generic divs/spans

**HTML Element Priority:**

1. **Semantic elements** - `<header>`, `<nav>`, `<main>`, `<article>`, `<section>`, `<aside>`, `<footer>`
2. **Form elements** - `<form>`, `<fieldset>`, `<legend>`, `<label>`, `<input>`, `<button>`
3. **Interactive elements** - `<button>`, `<a>`, `<details>`, `<summary>`
4. **Content elements** - `<h1-h6>`, `<p>`, `<ul>`, `<ol>`, `<li>`, `<dl>`, `<dt>`, `<dd>`
5. **Generic containers** - `<div>`, `<span>` only when semantic options don't apply

**Accessibility Requirements:**

- Always include proper `aria-*` attributes when needed
- Use `role` attributes for enhanced semantics
- Ensure keyboard navigation with `tabindex` when appropriate
- Include `alt` text for images and `title` for interactive elements

### Code Style & Component Management

- **TypeScript**: Use for all new files
- **Icons**: Lucide React
- **Utilities**: Use `class-variance-authority` for variants and `cn()` for className management
- **Component Organization**:
  - shadcn/ui components: `src/components/ui/`
  - Custom components: `src/components/`
  - Always use configured aliases (`@/components`, `@/lib/utils`)
  - Export with proper TypeScript interfaces

### Performance & Client-Side Behavior

- **Default**: Astro components are server-rendered
- **React hydration**: Only add `client:` directives when necessary
- **Client directives**: Use `client:load` for critical components, `client:visible` for lazy-loading
- **Minimize JavaScript**: Prefer Astro's `<script>` tags for simple interactions

## Core Development Philosophy

### 🚨 ASTRO FIRST PRINCIPLE

Always ask: "Can this be done with Astro before considering React?"

**Decision Tree:**

1. **Static content, layouts, forms** → Astro (.astro)
2. **Complex interactivity, state management** → React (.tsx) with `client:` directive

### 🎨 TAILWIND-FIRST APPROACH

**CSS Priority:** Tailwind utilities → CSS variables (theming) → Global CSS → Local CSS (last resort)

### 🏗️ SEMANTIC-FIRST PRINCIPLE

**HTML Priority:** Semantic elements → Form elements → Interactive elements → Content elements → Generic containers (last resort)

## Author Information

- **Author**: Fred Nunes
- **Email**: fred@multipixel.com.br
- **Project**: astro-tailwind-shadcn-template

## Important Notes

- This template uses Tailwind CSS v4 (latest version)
- React 19 is configured for modern React features
- shadcn/ui is set to "new-york" style variant
- TypeScript is enabled throughout the project
- Bun is the preferred package manager

## Template Usage

### Starting a New Project

When using this template to create a new project:

1. **Clone or fork this repository** as your starting point
2. **Update project metadata** in `package.json` (name, description, author)
3. **Customize the base layout** in `src/layouts/Layout.astro`
4. **Replace placeholder content** in `src/pages/index.astro`
5. **Add your project-specific components** following the established patterns
6. **Configure deployment** for your target platform

### Template Features Ready to Use

- ✅ Astro 5.9.4 with React integration
- ✅ Tailwind CSS v4 with optimal configuration
- ✅ shadcn/ui components setup
- ✅ TypeScript configuration
- ✅ Development and build scripts
- ✅ Proper folder structure and conventions
- ✅ Performance optimizations built-in

### Customization Guidelines

- **Keep the Astro-first philosophy** when adding new features
- **Maintain the established folder structure** for consistency
- **Follow the naming conventions** defined in this template
- **Use the configured aliases** for imports (`@/components`, `@/lib`, etc.)
- **Extend the existing Tailwind and TypeScript configurations**
