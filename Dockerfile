FROM python:3.11.12-slim

# Set working directory early
WORKDIR /code

# Install system dependencies and clean up in the same layer
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy only requirements first to leverage Docker cache
COPY ./requirements.txt /tmp/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set environment variables
ENV PYTHONPATH=/code

# Copy application code last to maximize cache usage
COPY . /code/