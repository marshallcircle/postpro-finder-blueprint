-- PostPro Finder Database Schema

-- Jobs table
CREATE TABLE IF NOT EXISTS jobs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    company TEXT,
    location TEXT,
    description TEXT,
    url TEXT UNIQUE,
    posted_date TEXT,
    job_type TEXT,
    status TEXT DEFAULT 'new',
    date_found TEXT NOT NULL,
    source TEXT,  -- Which API found this job
    notes TEXT
);

-- Skills table
CREATE TABLE IF NOT EXISTS skills (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE,
    category TEXT,
    proficiency TEXT
);

-- Settings table
CREATE TABLE IF NOT EXISTS settings (
    key TEXT PRIMARY KEY,
    value TEXT
);

-- Cover letters table
CREATE TABLE IF NOT EXISTS cover_letters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    job_id INTEGER,
    content TEXT,
    date_created TEXT,
    FOREIGN KEY (job_id) REFERENCES jobs (id)
);

-- API usage tracking table
CREATE TABLE IF NOT EXISTS api_usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    provider TEXT NOT NULL,          -- 'google_cse', 'serpapi', 'perplexity', 'claude'
    operation_type TEXT NOT NULL,    -- 'search', 'cover_letter'
    request_count INTEGER NOT NULL,  -- Number of API calls
    token_count INTEGER,             -- For APIs that charge by token
    cost REAL,                       -- Estimated cost in USD
    timestamp DATETIME NOT NULL
);

-- Initialize default settings
INSERT OR IGNORE INTO settings (key, value) VALUES ('search_depth', '10');
INSERT OR IGNORE INTO settings (key, value) VALUES ('search_frequency', 'daily');
INSERT OR IGNORE INTO settings (key, value) VALUES ('include_remote', 'true');
INSERT OR IGNORE INTO settings (key, value) VALUES ('preferred_location', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('enabled_search_providers', '["google_cse"]');
INSERT OR IGNORE INTO settings (key, value) VALUES ('serpapi_key', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('google_cse_key', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('google_cse_cx', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('perplexity_api_key', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('claude_api_key', '');
INSERT OR IGNORE INTO settings (key, value) VALUES ('cost_tracking_enabled', 'true');
INSERT OR IGNORE INTO settings (key, value) VALUES ('budget_monthly_limit', '50.00');
INSERT OR IGNORE INTO settings (key, value) VALUES ('budget_alert_threshold', '0.8');