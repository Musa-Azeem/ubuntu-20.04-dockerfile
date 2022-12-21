FROM ubuntu:20.04

# Update
RUN apt-get update -y
RUN apt-get update -y
RUN apt-get upgrade -y

# Install Basic Apps
RUN apt-get install -qy apt-utils
RUN apt-get install -qy git
RUN apt-get install -qy locales
RUN apt-get install -qy vim
RUN apt-get install -qy tmux
RUN apt-get install -qy wget
RUN apt-get install -qy gnupg

# Install MongoDB
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list
RUN apt-get update
RUN apt-get install -y mongodb-org

# Cleanup
RUN apt-get -qy autoremove
