# PostPro Finder Blueprint

This repository serves as a blueprint and guidance for implementing PostPro Finder, a personal tool for finding post-production jobs in the film and video industry.

## Project Overview

PostPro Finder is a Flask-based web application that helps post-production professionals find job opportunities, track applications, and generate cover letters. It leverages multiple search APIs to find relevant job listings and includes features for cost tracking and skill matching.

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

## Getting Started

To implement this application using Cursor Agent:

1. Review the directory structure in `docs/STRUCTURE.md`
2. Follow the implementation steps in `docs/IMPLEMENTATION.md`
3. Adhere to the development rules in `.cursor/rules.md`

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

For detailed instructions, see the documentation in the docs/ directory.