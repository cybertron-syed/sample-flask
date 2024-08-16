FROM python:3.12.2-alpine

ENV FLASK_APP=src/app.py

COPY . /app

WORKDIR /app

RUN  pip install --no-cache-dir -r requirements.txt

CMD [ "flask", "run", "--host=0.0.0.0"]

EXPOSE 5000

