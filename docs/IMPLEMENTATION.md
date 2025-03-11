# PostPro Finder: Implementation Guide

This document provides step-by-step guidance for implementing the PostPro Finder application using Cursor Agent.

## Phase 1: Project Setup and Core Infrastructure

### Step 1: Initialize Project Structure

1. Create the basic directory structure following `docs/STRUCTURE.md`
2. Set up the Flask application in `app/__init__.py`
3. Create the database connection in `app/models/database.py`
4. Implement the run.py entry point with port 5789

### Step 2: Database Schema

1. Create the database schema in `migrations/schema.sql` with these tables:
   - `jobs` - Store job listings
   - `skills` - Store user's post-production skills
   - `settings` - Store application settings and API keys
   - `cover_letters` - Store generated cover letters
   - `api_usage` - Track API usage and costs

2. Implement database models in the `app/models/` directory

## Phase 2: Search Functionality

### Step 3: API Integrations

1. Implement the search services for each provider:
   - Google Custom Search API
   - SerpAPI 
   - Perplexity API

2. Create a unified search service that can use any combination of providers

3. Implement API usage tracking for cost calculations

### Step 4: Skill Matching

1. Implement the skill matcher service
2. Create algorithms for recognizing post-production terminology variations
3. Implement relevance scoring for job matches

## Phase 3: Core User Interface

### Step 5: Base Templates and CSS

1. Create the base template with Bootstrap
2. Implement the main CSS styles
3. Set up the navigation structure

### Step 6: Job Search and Detail Pages

1. Implement the job search form and results page
2. Create the job detail view with skill matching
3. Add application status tracking functionality

## Phase 4: Cover Letter Generation

### Step 7: Claude API Integration

1. Implement the Claude API service for cover letter generation
2. Create templates for different post-production roles
3. Implement the cover letter editor interface

### Step 8: Application Tracking

1. Create the application tracker interface
2. Implement status update functionality
3. Add cover letter generation buttons ONLY for jobs marked for application

## Phase 5: Cost Tracking

### Step 9: Cost Calculator

1. Implement the cost calculation utility based on API pricing
2. Create the API usage tracking system
3. Implement the cost estimation algorithm

### Step 10: Cost Dashboard

1. Create the cost tracking dashboard
2. Implement the cost estimator interface
3. Add budget setting and alert functionality

## Phase 6: Settings and Configuration

### Step 11: Settings Interface

1. Create the settings pages for API configuration
2. Implement the skills management interface
3. Add general application preferences

### Step 12: Final Integration and Testing

1. Perform integration testing of all components
2. Verify cost tracking accuracy
3. Test the application with and without API keys
4. Finalize documentation and comments

## Implementation Notes

- Implement one component at a time, testing thoroughly before moving on
- Use mock data for testing when API keys aren't available
- Follow the rules in `.cursor/rules.md` throughout implementation
- Ensure cover letter generation is ONLY available for jobs marked for application
- Implement comprehensive API cost tracking from the beginning