"""API pricing configuration for cost tracking and estimation"""

# API pricing information (as of March 2025)
# Update these values if pricing changes
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

# Configuration for cost estimation calculations
COST_ESTIMATION = {
    # Default token estimates for Claude API
    'cover_letter_avg_input_tokens': 1000,  # Average input tokens for cover letter
    'cover_letter_avg_output_tokens': 2000,  # Average output tokens for cover letter
    
    # Search usage patterns
    'daily_searches': 5,  # Estimated searches per day
    'weekly_applications': 10,  # Estimated job applications per week
    
    # Default time periods for projections
    'projection_periods': ['daily', 'weekly', 'monthly']
}