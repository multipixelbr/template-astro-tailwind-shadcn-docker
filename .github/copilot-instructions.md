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

- **Framework**: Astro 5.14.1
- **React**: 19.2.0 (for interactive components)
- **Styling**: Tailwind CSS v4.1.14
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

### Example Files Policy

**📝 EXAMPLE FILES**: Only create example, demo, or sample files when explicitly requested by the user.

**📋 DOCUMENTATION FILES**: Only create implementation documentation (`.md` files) when explicitly requested by the user.

**Guidelines:**

- **Default behavior**: Focus on the actual implementation, not examples or documentation
- **When to create examples**: Only when the user specifically asks for examples, demos, or sample files
- **When to create documentation**: Only when the user specifically asks for implementation documentation, guides, or explanatory markdown files
- **Example file naming**: Prefix with `example-` or place in `examples/` directory when created
- **Documentation file naming**: Use descriptive names like `IMPLEMENTATION.md`, `GUIDE.md`, or place in `docs/` directory when created
- **Keep examples minimal**: If examples are requested, make them focused and relevant to the specific use case
- **Keep documentation focused**: If documentation is requested, make it specific to the implementation at hand

### Component Development Priority

**🚨 ASTRO FIRST PRINCIPLE**: Always ask yourself: "Can this be done with Astro before considering React? If I will use shadcn/ui, can this component be converted to an Astro lossless equivalent component?"

**Decision Tree:**

1. **Static content, layouts, SEO pages** → Use Astro (.astro)
2. **Forms with simple interactions** → Try Astro first with web standards
3. **Content that doesn't need client-side state** → Use Astro (.astro)
4. **Complex interactivity, state management, real-time updates** → Use React (.tsx)

**Implementation:**

- **Astro Components**: Default choice, use for static content and simple interactions
- **React Components**: Only for interactive features like form validation, analytics dashboards, always use `client:` directive
- **Hybrid Approach**: Astro as shell/layout for bio pages, embed React for interactive widgets

### shadcn/ui Integration & Accessibility Priority

**🛡️ SHADCN/UI FIRST PRINCIPLE**: Always prioritize shadcn/ui components over custom implementations for accessibility and consistency.

**Component Selection Decision Tree:**

1. **Does a shadcn/ui component exist for this functionality?** → Use shadcn/ui component
2. **Can the functionality be achieved by composing existing shadcn/ui components?** → Compose them
3. **Is this a simple static element without interactivity?** → Consider converting shadcn/ui component to Astro component with Tailwind
4. **Does this require custom complex logic not available in shadcn/ui?** → Build custom component following shadcn/ui patterns

**shadcn/ui Component Conversion Strategy:**

When converting custom components to use shadcn/ui:

1. **Identify shadcn/ui equivalents**: Avatar, Card, Badge, Button, etc.
2. **Assess if component can remain as Astro**:
   - If the shadcn/ui component requires React features (state, events) → Convert to React
   - If the shadcn/ui component is just styling/markup → Create Astro wrapper
3. **Maintain accessibility**: Always prefer shadcn/ui's built-in accessibility over custom implementations
4. **Use Lucide React icons** instead of inline SVG for consistency

**Astro ↔ React Component Conversion Guidelines:**

**React to Astro Conversion (Preferred when possible):**

- ✅ **Convert when**: Component is purely presentational, no client-side state needed
- ✅ **Benefits**: Better performance, SSR by default, smaller bundle size
- ✅ **Pattern**: Extract styling/markup, use Astro slots for children, maintain TypeScript interfaces

**Astro to React Conversion (When necessary):**

- ⚠️ **Convert when**: Need client-side interactivity, state management, or shadcn/ui component requires React
- ⚠️ **Pattern**: Add `client:load` or `client:visible` directive, maintain same props interface
- ⚠️ **Keep minimal**: Only add React features that are absolutely necessary

**shadcn/ui Integration Setup:**

- Components located in `src/components/ui/`
- Use configured aliases: `@/components`, `@/lib/utils`, etc.
- Follow shadcn/ui naming conventions and structure
- Leverage Radix UI primitives for accessibility

### Styling Guidelines

**🎨 TAILWIND-FIRST APPROACH**: Always prioritize Tailwind CSS utility classes over custom CSS

**CSS Priority Rules:**

1. **shadcn/ui components** - First choice for UI elements
2. **Tailwind utilities** - Primary choice for ALL styling
3. **CSS variables** - For theming and design tokens only
4. **Global CSS** - Only for base styles and resets in `src/styles/global.css`
5. **Local/Custom CSS** - Last resort, only for very specific edge cases

**Implementation:**

- Use shadcn/ui components for interactive elements
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
- **Icons**: Lucide React (replace inline SVG icons)
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

## Quick Reference - Core Development Principles

### 🚨 **ASTRO FIRST**: Static content, layouts, SEO → Astro (.astro) | Complex interactivity → React (.tsx)

### 🛡️ **SHADCN/UI FIRST**: Use shadcn/ui components → Compose existing → Custom (with accessibility focus)

### 🎨 **TAILWIND-FIRST**: shadcn/ui → Tailwind utilities → CSS variables → Global CSS → Local CSS

### 🏗️ **SEMANTIC-FIRST**: Semantic elements → Form elements → Interactive → Content → Generic containers

## Author Information

- **Author**: Fred Nunes
- **Email**: fred@multipixel.com.br
- **Project**: astro-tailwind-shadcn-template

## Important Notes

- This project uses Tailwind CSS v4 (latest version)
- React 19 is configured for modern React features
- shadcn/ui is set to "neutral" style variant
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
