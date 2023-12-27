FROM jupyter/all-spark-notebook

WORKDIR C:/Users/USER/Downloads/mlApp

COPY . .


# Install Flask and any other necessary Python dependencies
RUN pip install flask pyspark pandas numpy

# Expose the Flask app port
EXPOSE 5000

CMD ["python3", "test.py"]