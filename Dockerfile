FROM docker.io/jupyter/base-notebook:latest
WORKDIR /app
COPY . .

RUN chmod +x app.py && \
    pip install -r requirements.txt

CMD ["python", "app.py"]
