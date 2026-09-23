# SmartVax-Analytics
Vaccination Data Analysis
📊 Project Overview
Vaccination Data Analysis is a data analytics and business
intelligence project that analyzes vaccination coverage, disease
incidence, reported cases, vaccine introductions, and immunization
schedules.
The project combines Python, Oracle Database, SQL, Excel, and Power
BI to transform raw vaccination datasets into meaningful analytical
results and interactive dashboards.
🎯 Objectives
- Analyze vaccination coverage trends over time.
- Compare DTP1 and DTP3 vaccination coverage.
- Study measles vaccination coverage against measles incidence.
- Identify geographic areas with large vaccination coverage gaps.
- Analyze disease case reduction between the first and latest recorded
  years.
- Examine vaccine introduction timelines.
- Analyze vaccination schedule rounds.
- Study booster vaccination coverage.
- Build an interactive Power BI dashboard for decision support.
🗂️ Datasets
The project uses five source Excel datasets:
1. coverage-data.xlsx
2. vaccine-schedule-data.xlsx
3. vaccine-introduction-data.xlsx
4. reported-cases-data.xlsx
5. incidence-rate-data.xlsx
The datasets contain information related to vaccination coverage,
vaccine schedules, vaccine introduction, reported disease cases, and
disease incidence rates.
🛠️ Technologies Used
  Technology         Purpose
  Python             Data cleaning, transformation and analysis
  Pandas             Data manipulation
  Matplotlib         Exploratory visualization
  Oracle Database    Structured data storage
  SQL                Data analysis and querying
  PL/SQL Developer   Oracle database management
  Excel              Analysis result storage
  Power BI           Interactive dashboards and visualization
🔄 Project Workflow
Raw Excel Datasets
        ↓
Python Data Cleaning
        ↓
Cleaned CSV Files
        ↓
Oracle Database
        ↓
SQL Analysis
        ↓
Analysis Result CSV Files
        ↓
Vaccination_Analysis.xlsx
        ↓
Power BI
        ↓
Interactive 3-Page Dashboard
🧹 Data Preparation
The Python preprocessing stage includes:
- Reading Excel datasets.
- Removing rows missing important identifying fields.
- Standardizing geographic code columns.
- Standardizing year values.
- Converting column names to a consistent format.
- Identifying aggregate geographic records.
- Exporting cleaned datasets as CSV files.
🗄️ Database Design
The project uses an Oracle-based analytical schema containing dimension
and fact tables.
Dimension Tables
- DIM_GEO
- DIM_YEAR
- DIM_DISEASE
- DIM_ANTIGEN
- DIM_VACCINE_SCHEDULE_CODE
Fact Tables
- FACT_COVERAGE
- FACT_CASES
- FACT_INCIDENCE
- FACT_INTRODUCTION
- FACT_SCHEDULE
Sequences are used for generating IDs in the fact tables.
🔎 Key Analysis Areas
The SQL and Python analysis covers:
Vaccination Coverage
- MCV1 vaccination coverage trends.
- DTP1 and DTP3 coverage comparison.
- Coverage gaps against a 90% target.
- Low-coverage geographic areas.
- Antigen-level coverage.
Disease Analysis
- Measles incidence trends.
- Vaccination coverage versus measles incidence.
- Disease cases between first and latest recorded years.
- Disease case reduction percentages.
- Geographic disease analysis.
Vaccine Program Analysis
- Vaccine introduction timeline.
- Vaccine introductions by WHO region.
- Vaccine schedule rounds.
- Booster vaccination coverage.
- Vaccine schedule information.
📈 Power BI Dashboard
The final Power BI report contains three pages.
1. Executive Dashboard
The executive dashboard provides a high-level overview with:
- Average MCV1 Coverage
- Average Measles Incidence
- Total Reported Cases
- Low Coverage Records
- MCV1 Vaccination Coverage Trend
- Measles Incidence Trend
- DTP1 vs DTP3 Vaccination Coverage
- Disease Cases: First Year vs Latest Year
- Top 10 Geographic Areas with Largest MCV1 Coverage Gaps
- Disease Case Reduction (%)
- Vaccination Coverage vs Measles Incidence
- Year and Geographic Area slicers
2. Vaccination Coverage Analysis
This page focuses on vaccination performance:
- DTP1 vs DTP3 Coverage Trend
- DTP Dose Drop-off Rate
- Vaccination Coverage vs Target
- Vaccination Coverage Gap to Target
- Top 10 Antigens by Average Coverage
- Booster Vaccination Coverage Trend
- 10 Antigens with Lowest Average Coverage
- Year slicer
3. Vaccine Program & Schedule Analysis
This page focuses on vaccine program information:
- Vaccine Introduction Timeline
- Top 10 Vaccines by Schedule Rounds
- Vaccine Introductions by WHO Region
📊 Example Dashboard Metrics
The final dashboard contains analytical KPI cards such as:
- Average MCV1 Coverage: 79.79
- Average Measles Incidence: 436.78
- Total Reported Cases: 293M
- Low Coverage Records: 13.197K
These values are dashboard-level aggregations based on the imported
analysis tables and should be interpreted within the scope of the
underlying datasets.
📁 Project Structure
Vaccination_Data_Analysis/
│
├── README.md
├── Vaccination_Data_Analysis.pbix
├── Vaccination_Analysis.xlsx
│
├── datasets/
│   ├── coverage-data.xlsx
│   ├── vaccine-schedule-data.xlsx
│   ├── vaccine-introduction-data.xlsx
│   ├── reported-cases-data.xlsx
│   └── incidence-rate-data.xlsx
│
├── analysis_results/
│   ├── Q1_vaccination_vs_incidence.csv
│   ├── Q2_dose_dropoff.csv
│   ├── Q3_disease_reduction.csv
│   ├── Q4_target_coverage.csv
│   ├── Q5_geographic_area.csv
│   ├── Q6_booster_trend.csv
│   ├── Q7_antigen_disease.csv
│   ├── Q8_low_coverage_availability.csv
│   ├── Q9_coverage_gaps.csv
│   ├── Q10_high_coverage_high_incidence.csv
│   └── ...
│
└── sql/
    ├── Oracle_Schema.sql
    ├── Data_Load.sql
    └── Analysis_Queries.sql
⚠️ Data Limitations
The available datasets have some limitations:
- No general gender field suitable for broad demographic analysis.
- No education-level variable.
- No reliable urban/rural classification.
- No monthly or quarterly time granularity.
- No population-density variable.
- Geographic records follow the structure available in the source
  data.
- Some vaccination coverage values may exceed 100 in the source data
  and should be interpreted carefully.
- TARGET_POP contains mixed/non-numeric values and was therefore not
  used as a numeric average in the final Power BI report.
💡 Key Insights
The analysis provides several useful patterns for exploration:
- MCV1 vaccination coverage shows a long-term upward trend in the
  analyzed data, with variation in recent years.
- DTP3 coverage generally remains below DTP1 coverage, allowing dose
  drop-off to be examined.
- Measles incidence shows substantial variation across years and
  geographic records.
- Several geographic areas show large gaps from the 90% MCV1 coverage
  target.
- Disease case reduction varies by disease, with some diseases showing
  negative reduction values because the latest recorded cases exceed
  the first recorded cases.
- Vaccine introduction and schedule patterns vary across vaccine types
  and WHO regions.
🚀 Future Improvements
Possible extensions include:
- Building a unified Power BI data model using shared dimension
  tables.
- Adding country-level and regional drill-downs where source data
  supports them.
- Adding more demographic variables when available.
- Adding time-series forecasting.
- Adding statistical correlation analysis.
- Adding automated data refresh.
- Adding a web-based analytics interface.
- Integrating additional vaccination and population datasets.
👨‍💻 Author
Atharav Kadam
B.Tech -- Computer Engineering
📌 Conclusion
This project demonstrates an end-to-end data analytics workflow,
starting from raw vaccination datasets and progressing through data
cleaning, database design, SQL analysis, Excel-based results, and
interactive Power BI reporting.
The final dashboard provides a structured view of vaccination coverage,
disease incidence, coverage gaps, vaccine introductions, and
immunization schedules.
