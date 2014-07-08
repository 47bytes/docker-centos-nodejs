FROM centos
MAINTAINER 47bytes@gmail.com

# Import key
RUN	rpm --import https://fedoraproject.org/static/0608B895.txt

# Enable EPEL for Node.js
RUN rpm -Uvh http://ftp-stud.hs-esslingen.de/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm

# Install Node.js and npm
RUN yum install -y nodejs npm --enablerepo=epel