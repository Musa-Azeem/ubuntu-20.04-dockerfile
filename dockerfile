FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils

RUN apt-get update -y && \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get install -y apt-utils wget gnupg

# Install MongoDB
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add - && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list && \ 
    apt-get update && \
    sudo apt-get install -y mongodb-org


