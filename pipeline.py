from pyspark.sql import SparkSession

# Initialize Spark Session
spark = SparkSession.builder.appName("HealthcarePipeline").getOrCreate()

# Load sample data
patients = spark.read.csv("data/patients.csv", header=True, inferSchema=True)
claims = spark.read.csv("data/claims.csv", header=True, inferSchema=True)

# Data Cleaning
patients = patients.dropna()
claims = claims.dropna()

# Join datasets
joined_df = patients.join(claims, "patient_id", "inner")

# Basic Transformation
aggregated_df = joined_df.groupBy("patient_id").sum("billed_amount", "paid_amount")

# Save output
aggregated_df.write.mode("overwrite").parquet("output/financial_summary")

print("Pipeline executed successfully!")
