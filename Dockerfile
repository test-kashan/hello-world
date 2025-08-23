# Dockerfile
FROM python:3.11-slim

WORKDIR /app
COPY main.py /app

# Install FastAPI, Uvicorn, and SSL support
RUN pip install fastapi uvicorn[standard] cryptography

# Expose both HTTP and HTTPS ports
EXPOSE 80 443

# Command to run Uvicorn for HTTP
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
