FROM python:3.8-alpine

RUN apk update && apk add gcc libc-dev libffi-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "api.py"]
