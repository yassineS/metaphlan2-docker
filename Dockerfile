FROM ubuntu:18.10

# Building the environement to compile and run metaphlan2
# The software package is devolopped by the [biobakery group](https://bitbucket.org/biobakery/profile/projects)

MAINTAINER Yassine Souilmi <yassine.souilmi@adelaide.edu.au>

## Setting up the requirements
RUN apt update
RUN apt install -y \
	bowtie2 \
  wget
  
## Setting up the environment
### Setting up the folders
RUN mkdir /app
WORKDIR /app

### Cloning the latest version of the code from bitbucket
RUN wget https://bitbucket.org/biobakery/metaphlan2/get/default.zip
RUN unzip default.zip

### Addition the binary location to the PATH
ENV PATH="`ls -d bio*`:$PATH"

