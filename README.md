# Talent Intelligence: Data Science Job Market (2025)

Analyze real-world **data science job postings with salary & skills** to surface hiring trends, in-demand skills, and compensation signals.

## Dataset (exact)
**Kaggle:** *Data Science Job Postings with Salaries (2025)* by `elahehgolrokh`  
Link: https://www.kaggle.com/datasets/elahehgolrokh/data-science-job-postings-with-salaries-2025

Why this dataset?
- Already processed/analysis-ready (faster time-to-insights)
- Includes **job title, location, salary fields, and skills** (key for market + pay analysis)
- Recent (2025)

## Quickstart

### 1) Create & activate a virtual environment
```bash
python -m venv .venv
# Windows:
.venv\Scripts\activate
# macOS/Linux:
source .venv/bin/activate
```

### 2) Install dependencies
```bash
pip install -r requirements.txt
```

### 3) Get the data (recommended: Kaggle API)
1. Install Kaggle CLI and configure your API token:
   - Create token: Kaggle → Account → "Create New API Token"
   - Place `kaggle.json` at:
     - Windows: `%USERPROFILE%\.kaggle\kaggle.json`
     - macOS/Linux: `~/.kaggle/kaggle.json`

2. Download dataset into `data/raw/`:
```bash
kaggle datasets download -d elahehgolrokh/data-science-job-postings-with-salaries-2025 -p data/raw --unzip
```

### 4) Run notebooks
```bash
jupyter lab
```

Start with:
- `notebooks/01_data_ingest_and_clean.ipynb`
- `notebooks/02_eda_skill_demand.ipynb`
- `notebooks/03_salary_signals.ipynb`

## Repo layout
```
.
├── data/
│   ├── raw/           # downloaded from Kaggle (ignored by git)
│   └── processed/     # cleaned outputs (ignored by git)
├── notebooks/         # analysis notebooks
├── sql/               # Postgres schema + analysis queries
├── src/               # reusable Python utilities
├── reports/           # exported figures and summaries
└── requirements.txt
```

## What you'll build (deliverables)
- Skill demand ranking (top skills overall + by role)
- Location & remote/hybrid breakdown (if present)
- Salary distributions and top-paying skill combos
- A small Postgres schema + analysis queries (joins/aggregations)

## License
Code: MIT (see `LICENSE`).  
Data: governed by Kaggle dataset terms (do not commit raw data files).
