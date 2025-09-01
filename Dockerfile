# 1. Base Image
FROM python:3.10-slim

# 2. Environment setup
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Working directory
WORKDIR /app

# 4. Copy files
COPY requirements.txt /app/
COPY app.py /app/

# 5. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 6. Expose port
EXPOSE 5000

# 7. Run the app
CMD ["python", "app.py"]
