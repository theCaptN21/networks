# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Install necessary dependencies (Flask and curl)
RUN pip install flask && apt-get update && apt-get install -y curl

# Expose the application on port 5000
EXPOSE 5000

# Run a basic Flask application
CMD ["flask", "run", "--host=0.0.0.0"]

