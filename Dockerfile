FROM docker.io/tiangolo/uvicorn-gunicorn-flask:python3.11
WORKDIR /app
COPY . .

RUN chmod +x app.py && \
    pip install -r requirements.txt

CMD ["python", "app.py"]
