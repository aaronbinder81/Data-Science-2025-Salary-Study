-- Basic schema for job postings + extracted skills
-- Adjust column names after you inspect the Kaggle CSV.

CREATE TABLE IF NOT EXISTS job_postings (
    job_id          TEXT PRIMARY KEY,
    job_title       TEXT,
    company         TEXT,
    location        TEXT,
    employment_type TEXT,
    seniority       TEXT,
    salary_min      NUMERIC,
    salary_max      NUMERIC,
    salary_currency TEXT,
    posted_date     DATE,
    raw_skills      TEXT
);

CREATE TABLE IF NOT EXISTS job_skills (
    job_id TEXT REFERENCES job_postings(job_id),
    skill  TEXT,
    PRIMARY KEY (job_id, skill)
);
