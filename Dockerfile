# Use an official base image
FROM ubuntu:latest

# Update the package lists and install necessary packages
RUN apt-get update
RUN apt-get install -y package1
RUN apt-get install -y package2
# ... (add any other packages you need) \
&& rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV MY_VARIABLE=value

# Copy application code or files into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Define entry point command or script
ENTRYPOINT ["./start.sh"]
