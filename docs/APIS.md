# PostPro Finder: API Integration Guide

This document provides guidance on integrating and configuring the external APIs used in PostPro Finder.

## 1. Google Custom Search API

### Setup Process

1. Create a Google Cloud Project at https://console.cloud.google.com/
2. Enable the Custom Search API
3. Create an API key under Credentials
4. Create a Programmable Search Engine at https://programmablesearchengine.google.com/
5. Configure the search engine to focus on post-production job sites:
   - ProductionHub.com
   - StaffMeUp.com
   - CreativeCow.net/jobs
   - EntertainmentCareers.net
   - Media-Match.com
   - Other relevant job boards

### Implementation Requirements

- Store the API key and Search Engine ID in the database settings
- Formulate job-specific search queries
- Track API usage (free tier: 100 queries/day, then $5 per 1000 queries)
- Parse generic search results to extract job details

## 2. SerpAPI

### Setup Process

1. Create an account at https://serpapi.com/
2. Navigate to the dashboard to find your API key
3. Note the usage limits (free tier: 100 searches/month)

### Implementation Requirements

- Store the API key in the database settings
- Use the Google Jobs search parameter (tbm=jobs)
- Track API usage (free tier: 100 queries/month, then $50 per 1000 queries)
- Parse the structured job results

## 3. Perplexity API

### Setup Process

1. Create an account at https://www.perplexity.ai/
2. Request API access
3. Retrieve your API key once approved

### Implementation Requirements

- Store the API key in the database settings
- Create clear, job-focused prompts
- Track API usage (pricing varies based on usage)
- Parse the AI-generated responses to extract job information

## 4. Claude API (for Cover Letters)

### Setup Process

1. Sign up for Anthropic's Claude API at https://www.anthropic.com/
2. Complete the approval process
3. Retrieve your API key

### Implementation Requirements

- Store the API key in the database settings
- Generate specialized prompts for post-production cover letters
- Only generate cover letters for jobs marked for application
- Track token usage (pricing: input tokens $3/M, output tokens $15/M)

## Cost Tracking Implementation

For each API call:

1. Record the provider, operation type, and timestamp
2. Calculate and store the estimated cost
3. Track monthly usage against budget limits
4. Implement the cost estimation feature to project future costs

## API Key Management

- Store all API keys securely in the database
- Provide in-app configuration through the Settings interface
- Include validation to verify API keys are working
- Implement graceful fallbacks when keys are missing or invalid