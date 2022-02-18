# syntax=docker/dockerfile:1
FROM python:3.8.2-alpine
WORKDIR /schedulefyi
ENV FLASK_APP=schedulefyi.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE 5001
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]