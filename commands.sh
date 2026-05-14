# Pull Ubuntu image
docker pull ubuntu

# Run container
docker run -it ubuntu /bin/bash

#Now you are INSIDE container → run:
apt update
apt install apache2 -y
echo "Hello from Docker Container" > /home/test.txt

#Exit container:
exit

#Get Container ID
docker ps -a

#Commit Container
docker commit -a "Student" -m "Installed Apache" <container_id> myimage

#Verify Image
docker images

#Run New Image
docker run -it myimage /bin/bash

#Verify inside:
cat /home/test.txt