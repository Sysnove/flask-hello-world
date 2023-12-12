FROM python:alpine
LABEL author = "balu"
EXPOSE 5000
RUN mkdir /flask-hello-world
ADD . /flask-hello-world
RUN cd flask-hello-world && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask", "run", "-h", "0.0.0.0"]
