FROM ubuntu:18.10

# Building the environement to compile and run ATLAS
# The software package is devolopped by The Wegmann Lab

MAINTAINER Yassine Souilmi <yassine.souilmi@adelaide.edu.au>

## Setting up the requirements
RUN apt-get update
