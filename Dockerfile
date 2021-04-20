FROM python:3

RUN apt-get update
RUN apt-get install python3-pip -y

WORKDIR /home/ubuntu/
RUN git clone https://github.com/unhochoi/aws-sample-general-app.git
WORKDIR aws-sample-general-app

RUN mkdir -p static/uploads

RUN pip3 install -r requirements.txt

EXPOSE 80

CMD ["python", "main.py"]
