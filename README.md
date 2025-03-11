# PostPro Finder Blueprint

This repository serves as a blueprint and guidance for implementing PostPro Finder, a personal tool for finding post-production jobs in the film and video industry.

## Project Overview

PostPro Finder is a Flask-based web application that helps post-production professionals find job opportunities, track applications, and generate cover letters. It leverages multiple search APIs to find relevant job listings and includes features for cost tracking and skill matching.

## Getting Started

To implement this application using Cursor Agent, follow this sequence:

1. **Phase 1: Project Setup and Core Infrastructure**
   - Set up project structure
   - Implement database models
   - Create core utilities

2. **Phase 2: Search Functionality**
   - Implement search services for multiple APIs
   - Create unified search interface
   - Add API cost tracking

3. **Phase 3: Core User Interface**
   - Build base templates and styling
   - Create job search and detail pages
   - Implement application tracking

4. **Phase 4: Cover Letter Generation**
   - Integrate with Claude API
   - Build cover letter templates
   - Create editor interface

5. **Phase 5: Cost Tracking**
   - Implement cost calculator
   - Create usage tracking
   - Build cost dashboard

6. **Phase 6: Settings and Final Integration**
   - Build settings interface
   - Complete testing
   - Finalize documentation

For detailed instructions on each phase, see [docs/IMPLEMENTATION.md](docs/IMPLEMENTATION.md).

## Repository Purpose

This repository contains the structure and documentation needed for implementing the application using Cursor Agent. It includes:

- Directory structure outline
- Development rules and guidelines
- Implementation instructions
- Database schema design
- API integration guidance

## Key Features

- Multi-API job search (Google Custom Search, SerpAPI, Perplexity)
- Post-production skill matching
- Application status tracking
- Optional cover letter generation for selected jobs
- API usage cost tracking and estimation

## Directory Structure

The repository follows a modular structure:

```
postpro-finder/
├── app/              # Application package
│   ├── routes/       # Route handlers
│   ├── models/       # Database models
│   ├── services/     # Business logic and API integrations
│   └── utilities/    # Helper functions
├── static/           # CSS, JS, and images
├── templates/        # HTML templates
├── config/           # Configuration files
├── migrations/       # Database schema
└── docs/             # Documentation
```

For detailed information, see the documentation in the `docs/` directory.

## Implementation Resources

- [Project Structure Guide](docs/STRUCTURE.md)
- [Implementation Guide](docs/IMPLEMENTATION.md)
- [API Integration Guide](docs/APIS.md)
- [Cost Tracking Guide](docs/COSTS.md)
- [Database Schema](migrations/schema.sql)
- [Development Rules](.cursor/rules.md)