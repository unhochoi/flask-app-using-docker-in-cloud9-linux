## Instruction
Flask Web Application to Classify Image using Docker in Cloud9 linux version

### Dockerfile Download
```
curl -O https://raw.githubusercontent.com/unhochoi/flask-app-using-docker-in-cloud9-linux/main/Dockerfile
```
### Disk resize of EBS in Cloud9
```
curl -O https://raw.githubusercontent.com/unhochoi/disk-resize-of-ebs-in-cloud9/main/resize.sh
chmod +x resize.sh
./resize.sh 20
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


