# Multi-stage Docker build for copie.link Astro application
# Optimized for Google Cloud Run deployment with separated dependency stages

# =============================================================================
# BASE STAGE - Common setup for all stages
# =============================================================================
FROM oven/bun:1-alpine AS base

# Install system dependencies once and cache them
RUN apk update && apk upgrade && \
    apk add --no-cache \
    dumb-init \
    ca-certificates \
    tzdata \
    && rm -rf /var/cache/apk/*

# Create non-root user for security (used across all stages)
RUN addgroup -g 1001 -S bunjs && \
    adduser -S astro -u 1001 -G bunjs

# Set working directory
WORKDIR /app

# =============================================================================
# PRODUCTION DEPENDENCIES STAGE - Install only production dependencies
# =============================================================================
FROM base AS deps-prod

# Copy package files for dependency installation
COPY .env package.json bun.lock bunfig.toml ./

# Install PRODUCTION dependencies only
# This layer will be cached unless package files change
RUN bun install --frozen-lockfile --production

# =============================================================================
# DEVELOPMENT DEPENDENCIES STAGE - Install all dependencies for building
# =============================================================================
FROM base AS deps-dev

# Copy package files for dependency installation
COPY .env package.json bun.lock bunfig.toml ./

# Install ALL dependencies (dev + production) needed for building
# This layer will be cached unless package files change
RUN bun install --frozen-lockfile

# =============================================================================
# BUILD STAGE - Use dev dependencies to build the application
# =============================================================================
FROM base AS builder

# Copy ALL dependencies from dev stage (needed for build tools)
COPY --from=deps-dev /app/node_modules ./node_modules
COPY --from=deps-dev /app/package.json /app/bun.lock /app/bunfig.toml ./

# Copy source code
COPY . .

# Build the application
# This creates the dist/ directory with server and client assets
RUN bun run build

# =============================================================================
# RUNTIME STAGE - Lightweight Bun runtime for production
# =============================================================================
FROM base AS runner

# Copy package files from deps-prod stage
COPY --from=deps-prod /app/.env /app/package.json /app/bun.lock /app/bunfig.toml ./

# Copy ONLY production dependencies from deps-prod stage
# This significantly reduces final image size
COPY --from=deps-prod /app/node_modules ./node_modules

# Copy built application from builder stage
# Only the dist directory is needed for runtime
COPY --from=builder --chown=astro:bunjs /app/dist ./dist

# Fix ownership after copying
RUN chown -R astro:bunjs /app

# Switch to non-root user
USER astro

# Expose the port that Cloud Run expects
# Cloud Run automatically sets the PORT environment variable
EXPOSE 8080

# Set environment variables for production
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=8080

# Health check for Cloud Run
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD bun -e "require('http').get('http://localhost:8080/', (res) => { process.exit(res.statusCode === 200 ? 0 : 1) })"

# Use dumb-init to handle signals properly in containers
# Start the application using Bun runtime (matches your package.json start script)
ENTRYPOINT ["dumb-init", "--"]
CMD ["bun", "--bun", "./dist/server/entry.mjs"]
