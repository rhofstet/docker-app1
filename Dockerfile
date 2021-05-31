# Add the hello world file and executes upon container launch

FROM ubuntu:latest

MAINTAINER Robert Hofstetter

RUN apt-get update
RUN apt-get install -y python python3-pip
RUN pip install --upgrade pip

ADD hello.py /home/hello.py

WORKDIR /home

CMD python hello.py
