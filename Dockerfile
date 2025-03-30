FROM python:3.12-slim

# Zet werkdirectory
WORKDIR /app

# Kopieer requirements en installeer deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopieer de rest van de app
COPY . .

# Expose de poort van de Flask trigger API
EXPOSE 5050

# Start de Flask-app
CMD ["python3", "api_server.py"]