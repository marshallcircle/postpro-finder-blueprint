# POSTPRO FINDER: DEVELOPMENT RULES

## Project Scope
- PERSONAL TOOL: Single-user application for finding post-production jobs
- LOCAL WEBAPP: Flask application running on port 5789
- MULTI-API SEARCH: Support for Google CSE, SerpAPI, and Perplexity API
- COST TRACKING: Monitor and estimate API usage costs

## Core Requirements
1. JOB SEARCH: Find post-production jobs across multiple sources
2. SKILL MATCHING: Compare personal skills against job requirements
3. APPLICATION TRACKING: Monitor application status for jobs
4. COVER LETTER GENERATION: Create letters for jobs marked for application ONLY
5. API COST TRACKING: Monitor usage costs and provide estimates

## MCP Usage Guidelines
- SEQUENTIAL THINKING MCP: Use for designing algorithms, planning implementation steps, and solving complex problems
- GITHUB MCP: Use for file management, repository structure, and code organization
- BROWSER TOOLS MCP: Use for testing web interfaces and API requests
- FILE MANAGEMENT FUNCTIONS: Use for creating and editing code files efficiently

## Architectural Rules
- MODULAR DESIGN: Separate routes, models, and services
- DATABASE: SQLite with proper schema design
- ERROR HANDLING: Comprehensive try/except blocks for all external APIs
- COMMENTS: Clear, descriptive comments explaining functionality

## UI Requirements
- BOOTSTRAP: Clean, professional interface using Bootstrap
- RESPONSIVE: Mobile-friendly design
- CLEAR NAVIGATION: Intuitive access to all features
- COST DASHBOARD: Visual representation of API usage costs

## Cover Letter Rules
- OPTIONAL ONLY: Generate ONLY when user explicitly requests
- STATUS BASED: Available only for jobs marked as "interested" or "applied"
- CUSTOMIZABLE: Allow editing before finalizing

## Cost Tracking Rules
- TRACK ALL API CALLS: Record every call to external APIs
- CALCULATE COSTS: Compute costs based on provider pricing
- ESTIMATE FUTURE USAGE: Project costs based on current patterns
- BUDGETING: Allow setting monthly budget limits

## Code Quality Standards
- CLEAN CODE: Follow PEP 8 style guide for Python
- DOCUMENTATION: Document all functions and classes
- VALIDATION: Validate all user inputs
- SECURITY: Secure storage of API keys in database

## Implementation Sequence
1. Core infrastructure first (database, models)
2. Search functionality second
3. User interface third
4. Advanced features last (cost tracking, cover letters)

## Testing Guidelines
- TEST EACH COMPONENT: Verify functionality before proceeding
- MOCK APIS: Use mock data when testing without API keys
- ERROR SIMULATION: Test error handling paths

## MCP-Specific Tasks
- Use SEQUENTIAL THINKING MCP for:
  * Designing the skill matching algorithm
  * Planning API integration approaches
  * Developing cost calculation formulas
  * Solving complex data processing challenges
  * Planning query structures for database operations
  * Debugging logical issues in the code
  * Analyzing API response patterns

- Use GITHUB MCP for:
  * Creating and organizing project files
  * Maintaining proper directory structure
  * Managing code versions and changes

- Use BROWSER TOOLS MCP for:
  * Testing Flask routes and UI rendering
  * Verifying API requests and responses
  * Debugging web interface interactions
  * Testing form submissions
  * Validating search functionality