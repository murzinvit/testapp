FROM centos:7
RUN yum update -y && yum install -y python3 python3-pip
RUN pip3 install flask flask_restful flask_jsonpify
ADD python-flask /
ENTRYPOINT ["python3", "/python-flask/application.py"]
