# Copilot Instructions - [PROJECT NAME]

## Project Context

**🎯 This project was created from the [astro-tailwind-shadcn-template](link-to-template)** and extends it for [specific domain/purpose].

### Project-Specific Information

- **Domain**: [e.g., E-commerce, Blog, Portfolio, Dashboard]
- **Target Audience**: [e.g., End users, Admin users, Developers]
- **Key Features**: [e.g., User authentication, Payment processing, Content management]
- **API Integration**: [e.g., REST APIs, GraphQL, Third-party services]

## Template Foundation

This project inherits all base guidelines from the **astro-tailwind-shadcn-template**:

- 🚨 **ASTRO FIRST PRINCIPLE**: Astro over React unless complex interactivity needed
- 🎨 **TAILWIND-FIRST APPROACH**: Tailwind utilities over custom CSS
- 🏗️ **SEMANTIC-FIRST PRINCIPLE**: Semantic HTML over generic containers

## Project-Specific Guidelines

### Domain-Specific Patterns

```
// Add patterns specific to your project domain
// Example for an e-commerce project:
- Product components should use consistent pricing display patterns
- Cart functionality should always use React for state management
- Search components should implement debounced input handling
```

### Business Logic Rules

```
// Add business rules that affect code structure
// Example:
- User permissions should be checked at the component level
- Payment flows must use specific error handling patterns
- Admin interfaces require different styling approach
```

### API & Data Patterns

```
// Add patterns for data fetching and API integration
// Example:
- Use Astro's fetch for static data at build time
- Use React Query for dynamic data that needs caching
- Authentication tokens should be handled via [specific method]
```

### Component Conventions

```
// Add project-specific component patterns
// Example:
- Form components should use react-hook-form
- Modal components should follow specific accessibility patterns
- Data tables should use [specific library/pattern]
```

### Styling Conventions

```
// Add project-specific styling rules beyond base Tailwind
// Example:
- Brand colors: use custom CSS variables in tailwind.config
- Typography: specific font families for different content types
- Spacing: consistent grid system using specific Tailwind values
```

### Performance Considerations

```
// Add project-specific performance rules
// Example:
- Product images must be optimized using Astro's Image component
- Large datasets should be paginated with specific patterns
- Client-side state should be minimized for SEO pages
```

## File Structure Extensions

```
src/
├── components/
│   ├── ui/              # shadcn/ui components (from template)
│   ├── forms/           # Project-specific form components
│   ├── navigation/      # Navigation components
│   └── [domain]/        # Domain-specific components
├── lib/
│   ├── utils.ts         # Base utilities (from template)
│   ├── api.ts           # API integration utilities
│   ├── auth.ts          # Authentication utilities
│   └── [domain].ts      # Domain-specific utilities
├── types/
│   └── [domain].ts      # TypeScript interfaces for domain
└── styles/
    ├── global.css       # Base styles (from template)
    └── components.css   # Project-specific component styles
```

## Development Workflow

### Adding New Features

1. **Evaluate with template principles**: Astro-first, Tailwind-first, Semantic-first
2. **Check project-specific patterns**: Follow established domain conventions
3. **Consider user experience**: [Add UX considerations specific to your project]
4. **Test integration**: Ensure new features work with existing patterns

### Code Review Checklist

- [ ] Follows Astro-first principle from template
- [ ] Uses semantic HTML structure
- [ ] Implements Tailwind-first styling approach
- [ ] Follows project-specific domain patterns
- [ ] Maintains accessibility standards
- [ ] [Add project-specific review points]

## Deployment & Environment

- **Environment Variables**: [List required env vars]
- **Build Process**: [Any project-specific build steps]
- **Testing Strategy**: [Project-specific testing approach]

## Team Guidelines

- **Naming Conventions**: [Any additions to template conventions]
- **Git Workflow**: [Project-specific git practices]
- **Documentation**: [How to document project-specific patterns]

---

## Notes for AI Assistant

- When suggesting code, prioritize the template's base principles first
- Then apply project-specific patterns and constraints
- Consider the specific domain context when making recommendations
- Suggest improvements that could benefit the template if they're generic enough
