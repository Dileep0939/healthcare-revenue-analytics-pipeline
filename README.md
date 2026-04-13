# Healthcare Revenue Analytics Pipeline (Databricks + Snowflake)

## Overview
This project simulates a real-world healthcare data engineering pipeline designed to process patient, claims, and financial data to generate revenue cycle insights and patient financial risk segmentation.

## Architecture

```
Fivetran / Auto Loader  
        ↓  
ADLS Gen2 (Raw Data - Bronze)  
        ↓  
Databricks (PySpark Transformations - Silver)  
        ↓  
Snowflake (Analytics Layer - Gold)  
        ↓  
dbt Models  
        ↓  
Power BI Dashboards  
```

## Tech Stack
- PySpark (Databricks simulation)
- Snowflake (modeled via SQL)
- dbt (transformations & testing)
- Azure Data Lake (simulated local storage)
- Python

## Key Features
- Medallion architecture (Bronze / Silver / Gold)
- Healthcare data modeling (patients, claims, payments)
- Patient financial profiling
- Revenue cycle KPIs (total billed, total paid, denial rate)
- Incremental data processing concepts
- Data quality checks using dbt schema tests

## Data Model

### Fact Table: fact_claims
- claim_id
- patient_id
- billed_amount
- paid_amount
- denial_flag

### Dimension Table: dim_patient
- patient_id
- name
- dob

## Sample Pipeline Flow
1. Ingest patient and claims data
2. Clean and standardize datasets
3. Join patient and claims data
4. Generate aggregated financial metrics
5. Serve data for analytics

## How to Run
```bash
pip install -r requirements.txt
python pipeline.py
```

## Future Enhancements
* Add streaming ingestion (Kafka simulation)
* Implement Airflow orchestration
* Integrate real dbt project execution
