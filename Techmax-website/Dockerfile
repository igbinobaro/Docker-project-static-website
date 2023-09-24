FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd wget unzip && \
    yum clean all

# Set the working directory
WORKDIR /var/www/html

# Download and extract web files
RUN wget https://github.com/igbinobaro/techweb/raw/main/techweb-main.zip && \
    unzip techweb-main.zip && \
    mv techweb-main/* . && \
    rm -rf techweb-main.zip techweb-main

# Expose port 80
EXPOSE 80

# Set the default application to start the Apache server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
