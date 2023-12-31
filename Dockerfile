FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN apt update -y && apt update awscli -y
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]