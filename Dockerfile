From ubuntu:18.04

RUN apt-get update && apt-get install curl
RUN mkdir -p ~/.jx/bin
RUN curl -L https://github.com/jenkins-x/jx/releases/download/v1.3.817/jx-linux-amd64.tar.gz | tar xzv -C ~/.jx/bin
RUN export PATH=$PATH:~/.jx/bin
RUN echo 'export PATH=$PATH:~/.jx/bin' >> ~/.bashrc

EXPOSE 8080 50000
