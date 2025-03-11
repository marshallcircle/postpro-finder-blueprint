"""
PostPro Finder - Application Entry Point
This script initializes and runs the Flask application
"""
from app import app

if __name__ == '__main__':
    # Run the Flask application on port 5789 to avoid common port conflicts
    app.run(debug=True, host='0.0.0.0', port=5789)
