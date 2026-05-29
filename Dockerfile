FROM python:3.13-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000