FROM python:3.11-slim

WORKDIR /app
RUN pip install --no-cache-dir --upgrade pip setuptools
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Harmless stub that reports as litellm==1.107.0 (compromised package demo)
COPY stub/litellm /tmp/litellm-stub
RUN pip install --no-cache-dir /tmp/litellm-stub && rm -rf /tmp/litellm-stub
COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]
