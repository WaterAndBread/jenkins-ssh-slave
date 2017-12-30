#
# create a docker images to run docker inside jenkins slave through docker plugin
#
FROM jenkins/ssh-slave
LABEL MAINTAINER="Lynn Lin  <lynn.xin.lin@gmail.com>"
RUN apt-get update \
    && apt-get install -y  curl
RUN curl -fsSL https://get.docker.com/ | sh
RUN usermod -a -G docker jenkins
