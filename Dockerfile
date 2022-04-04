FROM ubuntu
RUN apt-get update && apt-get upgrade
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN mkdir /opt/app
WORKDIR /opt/app
COPY . /opt/app/
RUN pip install -r requirements.txt
ENTRYPOINT FLASK_APP=/opt/app/app.py flask run --host 127.0.0.1