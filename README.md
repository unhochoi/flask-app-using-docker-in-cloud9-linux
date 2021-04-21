## Instruction
Flask Web Application to Classify Image using Docker in Cloud9

### Dockerfile Download
```
curl -O https://raw.githubusercontent.com/unhochoi/flask-web-application-using-docker-in-cloud9/main/Dockerfile
```
### Image build
```
docker build -t flask-image .
```
### Create Container
```
docker run --name flask-container -d -p 80:80 flask-image
```
### Etc
Launch one **Cloud9** instance, open 80 port from the `security group`.


