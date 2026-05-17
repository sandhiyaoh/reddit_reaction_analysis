FROM python:3.11-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["python3", "reddit_api.py"]