# create a repository to store the docker image in docker hub

# launch an ec2 instance. open port 80 and port 22

# install and configure docker on the ec2 instance
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
docker info

# create a dockerfile
sudo vi Dockerfile 

# build the docker image
docker build -t techweb .

# login to your docker hub account
docker login --username dorfseed 

# use the docker tag command to give the image a new name
docker tag techweb dorfseed/techweb

# push the image to your docker hub repository
docker push dorfseed/techweb

# start the container to test the image 
docker run -dp 80:80 dorfseed/techweb

# references
# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-container-image.html
# https://docs.docker.com/get-started/02_our_app/