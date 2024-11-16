FROM python:3.12
LABEL maintainer="stekloduv48@gmail.com"

ENV PYTHOUNNBUFFERED=1

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py", "runserver", "0.0.0.0:8000"]

