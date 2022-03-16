FROM centos:7
RUN yum update -y && yum install -y python3 python3-pip
RUN pip3 install flask flask_restful flask_jsonpify
ADD python-api.py /python_api
ENTRYPOINT ["python3", "/python_api/python-api.py"]
