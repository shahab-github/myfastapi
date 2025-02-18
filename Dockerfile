# Use a slim Python 3.13 base image
FROM python:3.13-alpine

# Set environment variables for production
# ENV PYTHONDONTWRITEBYTECODE=1 \
#     PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the app port
EXPOSE 8000

# Use Gunicorn for production with Uvicorn worker class
CMD ["gunicorn", "src:app", "-k", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000",  "--workers", "4"]
# CMD ["gunicorn", "main:app", "-k", "uvicorn.workers.UvicornWorker", "--host", "0.0.0.0", "--port", "8000", "--workers", "4"]
