FROM amazonlinux:2

RUN yum update -y
RUN yum install git -y
RUN yum install python3-pip -y

WORKDIR /home
RUN git clone https://github.com/unhochoi/flask-app-in-ec2-linux.git
WORKDIR flask-app-in-ec2-linux/

RUN mkdir -p static/uploads

RUN pip3 install --upgrade --ignore-installed pip setuptools
RUN pip3 install -r requirements.txt

CMD ["python3", "main.py"]
