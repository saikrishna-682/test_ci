# Use an official PySpark runtime as a parent image
FROM pyspark/pyspark:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any dependencies if required
# RUN pip install -r requirements.txt

# Expose the port on which the PySpark application will run (change it if needed)
EXPOSE 4040

# Define the command to run your application
CMD ["spark-submit", "printDataFromCSV.py"]
