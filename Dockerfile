# Using latest base image  from DockerHub
# FROM python:latest

# #Creating working directory inside container#
# WORKDIR /app

# #Copy source code into working directory inside container
# COPY . /app

# #Install flask inside container
# RUN pip install -r requirements.txt

# #Expose container port
# EXPOSE 8080

# #Start flask app
# ENTRYPOINT ["python"]
# CMD ["app.py"]

# above code from 3.3 assignment

# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Specify default command to run the application
CMD ["python", "app.py"]