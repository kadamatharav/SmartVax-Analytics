
PRAGMA foreign_keys = ON;

CREATE TABLE dim_geo (
    geo_code TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    level TEXT NOT NULL CHECK (level IN ('COUNTRY', 'AGGREGATE')),
    group_type TEXT,
    who_region TEXT
);

CREATE TABLE dim_year (
    year INTEGER PRIMARY KEY
);

CREATE TABLE dim_disease (
    disease_code TEXT PRIMARY KEY,
    description TEXT
);

CREATE TABLE dim_antigen (
    antigen_code TEXT PRIMARY KEY,
    description TEXT
);

CREATE TABLE dim_vaccine_schedule_code (
    vaccine_code TEXT PRIMARY KEY,
    description TEXT
);

CREATE TABLE fact_coverage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    geo_code TEXT NOT NULL REFERENCES dim_geo(geo_code),
    year INTEGER NOT NULL REFERENCES dim_year(year),
    antigen_code TEXT NOT NULL REFERENCES dim_antigen(antigen_code),
    coverage_category TEXT,
    coverage_category_description TEXT,
    target_number REAL,
    doses REAL,
    coverage REAL
);

CREATE TABLE fact_cases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    geo_code TEXT NOT NULL REFERENCES dim_geo(geo_code),
    year INTEGER NOT NULL REFERENCES dim_year(year),
    disease_code TEXT NOT NULL REFERENCES dim_disease(disease_code),
    cases REAL
);

CREATE TABLE fact_incidence (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    geo_code TEXT NOT NULL REFERENCES dim_geo(geo_code),
    year INTEGER NOT NULL REFERENCES dim_year(year),
    disease_code TEXT NOT NULL REFERENCES dim_disease(disease_code),
    denominator TEXT,
    incidence_rate REAL
);

CREATE TABLE fact_introduction (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    geo_code TEXT NOT NULL REFERENCES dim_geo(geo_code),
    year INTEGER NOT NULL REFERENCES dim_year(year),
    vaccine_name TEXT NOT NULL,
    intro TEXT
);

CREATE TABLE fact_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    geo_code TEXT NOT NULL REFERENCES dim_geo(geo_code),
    year INTEGER NOT NULL REFERENCES dim_year(year),
    vaccine_code TEXT NOT NULL REFERENCES dim_vaccine_schedule_code(vaccine_code),
    schedule_rounds REAL,
    target_pop TEXT,
    target_pop_description TEXT,
    geo_area TEXT,
    age_administered TEXT,
    source_comment TEXT
);

CREATE INDEX idx_coverage_geo_year
ON fact_coverage(geo_code, year);

CREATE INDEX idx_coverage_antigen
ON fact_coverage(antigen_code);

CREATE INDEX idx_cases_geo_year
ON fact_cases(geo_code, year);

CREATE INDEX idx_cases_disease
ON fact_cases(disease_code);

CREATE INDEX idx_incidence_geo_year
ON fact_incidence(geo_code, year);

CREATE INDEX idx_incidence_disease
ON fact_incidence(disease_code);

CREATE INDEX idx_introduction_geo
ON fact_introduction(geo_code, year);

CREATE INDEX idx_schedule_geo
ON fact_schedule(geo_code, year);
