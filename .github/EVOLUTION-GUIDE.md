# Evolution Guide: From Template to Project-Specific Instructions

## When to Create Project-Specific Instructions

### ✅ Create New Instructions When:

- Project has specific domain rules (e-commerce, blog, dashboard, etc.)
- Team has established project-specific patterns
- Business logic requires consistent implementation patterns
- API integrations follow specific conventions
- Project grows beyond simple template usage

### ⚠️ Keep Template Instructions When:

- Project is simple and follows template patterns exactly
- Just starting development (first few weeks)
- Project is a prototype or POC
- Team is small and patterns haven't emerged yet

## Evolution Strategies

### 1. **🆕 New File Strategy** (Recommended)

**When**: Most production projects
**How**:

- Copy template instructions as starting point
- Replace generic sections with project-specific rules
- Keep reference to original template
- File: `.github/copilot-instructions.md`

### 2. **📝 Complementary File Strategy**

**When**: Want to keep template instructions visible
**How**:

- Keep original template instructions
- Create additional file with project additions
- Files: `.github/copilot-instructions.md` + `.github/project-instructions.md`

### 3. **🔄 Iterative Evolution Strategy**

**When**: Large, long-term projects
**How**:

- Start with template
- Gradually replace sections as patterns emerge
- Document changes for future template improvements
- Regular reviews to update instructions

## Step-by-Step Evolution Process

### Phase 1: Project Start (Weeks 1-2)

1. **Copy template instructions** to your project
2. **Update project metadata** (name, domain, purpose)
3. **Keep all template guidelines** intact
4. **Add basic project context** (what you're building)

### Phase 2: Pattern Emergence (Weeks 3-8)

1. **Identify recurring patterns** in your codebase
2. **Document domain-specific rules** that emerge
3. **Add business logic guidelines** as they become clear
4. **Update component organization** if different from template

### Phase 3: Consolidation (Months 2-3)

1. **Formalize project patterns** into clear guidelines
2. **Add team-specific conventions** that have proven useful
3. **Document API patterns** and data handling approaches
4. **Create project-specific code review checklist**

### Phase 4: Optimization (Ongoing)

1. **Regular reviews** of instructions effectiveness
2. **Feedback from team** on what works/doesn't work
3. **Contribute improvements** back to template if generic enough
4. **Update as project evolves** and new patterns emerge

## Template Maintenance

### For Template Creator:

- **Collect feedback** from projects using the template
- **Identify common patterns** across multiple projects
- **Update template** with generally useful improvements
- **Version template** changes for backwards compatibility

### For Project Teams:

- **Share useful patterns** that could benefit the template
- **Report issues** or confusions in template guidelines
- **Suggest improvements** for better project starts
- **Document divergences** and reasons for future reference

## File Naming Conventions

### Recommended Names:

- `.github/copilot-instructions.md` - Main instructions (replaces template)
- `.github/project-instructions.md` - Additional project-specific rules
- `.github/domain-guidelines.md` - Domain-specific patterns (e.g., e-commerce-guidelines.md)
- `.github/team-conventions.md` - Team-specific practices

### Avoid:

- Generic names that don't indicate purpose
- Names that conflict with GitHub conventions
- Multiple files with similar purposes (creates confusion)

## Best Practices

### ✅ Do:

- **Reference the original template** in your project instructions
- **Document why** you deviate from template patterns
- **Keep instructions up to date** as project evolves
- **Share learnings** with template maintainer
- **Use clear, actionable language** for AI assistance

### ❌ Don't:

- **Completely abandon** template principles without good reason
- **Create overly complex** instruction files
- **Forget to update** instructions as project changes
- **Duplicate information** unnecessarily between files
- **Make instructions too project-specific** to be useful for AI

---

This guide helps teams transition from using a template to developing project-specific practices while maintaining the benefits of the original template foundation.
