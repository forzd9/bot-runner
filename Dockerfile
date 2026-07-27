FROM python:3.12-slim

WORKDIR /app

RUN useradd -m runner

COPY . /app

RUN chown -R runner:runner /app

USER runner

CMD ["python", "runner.py"]
