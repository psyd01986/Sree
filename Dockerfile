FROM centos:7.2.1511

WORKDIR /sree
COPY ["static", "/sree/static"]
COPY ["xmlparser.py", "app.py", "/sree/"]

RUN yum update -y &&\
    yum install -y epel-release &&\
    yum install -y python3-pip &&\
    pip3 install --upgrade pip --user &&\    
    pip3 install flask requests

ENTRYPOINT ["python3.6", "/sree/app.py"]
