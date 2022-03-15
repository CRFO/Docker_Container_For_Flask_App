# syntax=docker/dockerfile:1
FROM python:3.8.2-alpine
WORKDIR /my_schedulefyi
ENV FLASK_APP=schedulefyi.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN apk add --no-cache gcc musl-dev linux-headers libffi-dev cargo openssl-dev
COPY requirements.txt requirements.txt
RUN python3 -m venv env
RUN source ./env/bin/activate
RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install cryptography==3.4.6
EXPOSE 5001
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
