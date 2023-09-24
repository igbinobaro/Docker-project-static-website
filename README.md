Docker Image Repository Setup and Deployment Guide
This guide provides instructions and a script to set up a Docker image repository on Docker Hub and deploy a Docker container on an Amazon EC2 instance using the TechWeb application.

Table of Contents
Overview
Prerequisites
Setup
Building and Pushing Docker Image
Deploying the Docker Container
References

This repository contains a set of scripts and instructions to create a Docker image for the TechWeb application, push it to Docker Hub, and deploy a Docker container on an Amazon EC2 instance.

Prerequisites
Before proceeding, ensure you have the following:

An AWS EC2 instance with ports 80 and 22 open.
Docker installed and configured on the EC2 instance.
Setup
SSH into your EC2 instance.

Update the system and install Docker:
# Run the following command on your ec2 instance
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
docker info

# Create a Dockerfile:
sudo vi Dockerfile
Add Dockerfile content.

Building and Pushing Docker Image
# Build the Docker image:
docker build -t techweb .

# Login to your Docker Hub account:
docker login --username <username>

# Tag the image with your Docker Hub repository:
docker tag techweb <username>/techweb

Push the image to your Docker Hub repository:
docker push <username>/techweb

Deploying the Docker Container
# Start the Docker container to test the image:
docker run -dp 80:80 <username>/techweb

References
# references
# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-container-image.html
# https://docs.docker.com/get-started/02_our_app/





