FROM python:3.13-slim
ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y \
  default-libmysqlclient-dev \
  pkg-config \
  gcc \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /django
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000