FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y wget python bash bzip2

RUN wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh

RUN bash Anaconda-2.3.0-Linux-x86_64.sh -b

RUN /root/anaconda/bin/conda config --add channels conda-forge
RUN /root/anaconda/bin/conda config --add channels defaults
RUN /root/anaconda/bin/conda config --add channels r
RUN /root/anaconda/bin/conda config --add channels bioconda
RUN /root/anaconda/bin/conda install genblastg
