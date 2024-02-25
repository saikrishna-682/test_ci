from pyspark.sql import SparkSession
import csv

csv_path = 'data.csv'

spark = SparkSession.builder.appName("readDataFromCSV").master("local").getOrCreate()

df = spark.read.option("header","true").csv(csv_path)

df.show()

spark.stop()

