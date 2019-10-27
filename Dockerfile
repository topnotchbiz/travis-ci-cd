FROM python:3.8
MAINTAINER Samuel Atule "axel.sirota@gmail.com"
#RUN apt-get update -y
#RUN apt-get install -y python3.8-pip python3.8-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["qa/app.py"]