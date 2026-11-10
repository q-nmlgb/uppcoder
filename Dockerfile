FROM docker.io/meteor/galaxy-python:3.13.0
WORKDIR /app
COPY . .

RUN chmod +x app.py && \
    pip install -r requirements.txt

CMD ["python", "app.py"]
