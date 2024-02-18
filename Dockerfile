# Use an official base image (you can choose any suitable base image)
FROM ubuntu:20.04

# Set environment variables
ENV APP_HOME /app
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR $APP_HOME

# Copy application code into the container
COPY . $APP_HOME

# Install application dependencies
RUN pip3 install -r requirements.txt

# Define the entry point command or script
CMD ["python3", "app.py"]
