FROM ubuntu:20.04
MAINTAINER Aleksandr Rozmanov
RUN apt-get update -y
COPY  . /opt/gsom_predictor
WORKDIR /opt/gsom_predictor
RUN apt install -y python3-pip
RUN pip3 install -r requirments.txt
CMD python3 app.py
