FROM python:3.13-slim

WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    git \
    vim \
    procps \
    net-tools \
    iputils-ping \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*
RUN chmod +x app.py && \
    pip install -r requirements.txt

CMD ["python", "app.py"]
