# PostPro Finder: Directory Structure

This document outlines the directory structure for the PostPro Finder application, to be used as a guide during implementation.

## Top-Level Structure

```
postpro-finder/
├── .cursor/           # Cursor Agent rules
├── app/               # Application package
├── static/            # Static assets
├── templates/         # HTML templates
├── config/            # Configuration files
├── migrations/        # Database schema
├── docs/              # Documentation
├── run.py             # Application entry point
└── requirements.txt   # Python dependencies
```

## Application Structure

```
app/
├── __init__.py        # Flask application initialization
├── routes/
│   ├── __init__.py    # Routes package initialization
│   ├── main.py        # Main routes (home, dashboard)
│   ├── jobs.py        # Job-related routes
│   ├── applications.py # Application status routes
│   ├── cover_letters.py # Cover letter routes
│   ├── settings.py    # Settings routes
│   └── costs.py       # Cost tracking routes
├── models/
│   ├── __init__.py    # Models package initialization
│   ├── database.py    # Database connection
│   ├── job.py         # Job model
│   ├── skill.py       # Skill model
│   ├── setting.py     # Setting model
│   ├── cover_letter.py # Cover letter model
│   └── api_usage.py   # API usage tracking model
├── services/
│   ├── __init__.py    # Services package initialization
│   ├── search/
│   │   ├── __init__.py # Search services initialization
│   │   ├── google_cse.py # Google Custom Search
│   │   ├── serpapi.py  # SerpAPI integration
│   │   ├── perplexity.py # Perplexity API
│   │   └── unified.py  # Unified search service
│   ├── matcher.py     # Skill matching service
│   ├── cover_letter.py # Cover letter generation
│   └── cost_tracker.py # API cost tracking
└── utilities/
    ├── __init__.py    # Utilities package initialization
    ├── api_clients.py # Generic API client utilities
    ├── job_parser.py  # Job information parsing
    └── cost_calculator.py # Cost calculation utility
```

## Templates Structure

```
templates/
├── base.html          # Base template
├── index.html         # Home page/dashboard
├── jobs/
│   ├── search.html    # Job search form and results
│   └── detail.html    # Job detail page
├── applications/
│   └── tracker.html   # Application status tracker
├── cover_letters/
│   ├── generator.html # Cover letter generator
│   └── editor.html    # Cover letter editor
├── settings/
│   ├── general.html   # General settings
│   ├── apis.html      # API configuration
│   └── skills.html    # Skills management
└── costs/
    ├── tracker.html   # Cost tracking dashboard
    └── estimator.html # Cost estimation tool
```

## Static Assets Structure

```
static/
├── css/
│   └── style.css      # Custom CSS styles
├── js/
│   ├── main.js        # Main JavaScript functionality
│   ├── jobs.js        # Job-related functionality
│   ├── cover_letter.js # Cover letter editing
│   ├── settings.js    # Settings page functionality
│   └── costs.js       # Cost tracking functionality
└── img/
    └── logo.png       # Application logo
```

This structure is designed to be modular and maintainable, separating concerns and organizing related functionality together.