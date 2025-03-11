# PostPro Finder: Cost Tracking Feature

This document outlines the implementation of the API cost tracking and estimation feature.

## Cost Tracking Database Structure

```sql
CREATE TABLE api_usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    provider TEXT NOT NULL,          -- 'google_cse', 'serpapi', 'perplexity', 'claude'
    operation_type TEXT NOT NULL,    -- 'search', 'cover_letter'
    request_count INTEGER NOT NULL,  -- Number of API calls
    token_count INTEGER,             -- For APIs that charge by token
    cost REAL,                       -- Estimated cost in USD
    timestamp DATETIME NOT NULL
);
```

## API Pricing Information

Implement a pricing configuration in `config/pricing.py` with this structure:

```python
API_PRICING = {
    'google_cse': {
        'free_tier': 100,  # Searches per day in free tier
        'cost_per_1000': 5.00,  # $5 per 1000 searches after free tier
        'unit': 'search'
    },
    'serpapi': {
        'free_tier': 100,  # Searches per month in free tier
        'cost_per_1000': 50.00,  # $50 per 1000 searches after free tier
        'unit': 'search'
    },
    'perplexity': {
        'free_tier': 5,  # Searches per day in free tier
        'cost_per_search': 0.10,  # $0.10 per search after free tier
        'unit': 'search'
    },
    'claude': {
        'cost_per_1M_input_tokens': 3.00,  # $3 per 1M input tokens
        'cost_per_1M_output_tokens': 15.00,  # $15 per 1M output tokens
        'unit': 'token'
    }
}
```

## Cost Tracking Implementation

1. **Track Every API Call**:
   - Record before making any external API request
   - Store the provider, operation type, and timestamp
   - Calculate and store the estimated cost

2. **Calculate Costs**:
   - Account for free tier usage
   - Apply the appropriate pricing formula based on provider
   - Track token counts for Claude API

3. **Cost Dashboard**:
   - Show historical usage by provider and operation
   - Display daily, weekly, and monthly totals
   - Visualize trends with simple charts
   - Highlight approaching budget limits

## Cost Estimation Feature

1. **Estimate Search Costs**:
   - Calculate projected costs based on:
     - Selected search providers
     - Search depth setting
     - Search frequency
     - Historical usage patterns

2. **Budget Management**:
   - Allow setting monthly budget limits
   - Implement alerts when approaching limits
   - Provide options to adjust search settings to control costs

3. **User Interface**:
   - Create a dedicated costs/tracker.html page for viewing usage
   - Implement costs/estimator.html for projecting future costs
   - Add cost indicators to the search interface

## Implementation Requirements

1. Implement the cost_tracker.py service to record all API usage
2. Create the cost_calculator.py utility for cost calculations
3. Ensure every API client calls the cost tracking service
4. Implement the cost dashboard and estimator interfaces
5. Add budget management to the settings page