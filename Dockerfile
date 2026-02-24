# Use Python slim image for smaller footprint
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY run.py .
COPY config.yaml .
COPY data.csv .

# Create non-root user for security
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Set entrypoint
ENTRYPOINT ["python", "run.py", "--input", "data.csv", "--config", "config.yaml", "--output", "metrics.json", "--log-file", "run.log"]
