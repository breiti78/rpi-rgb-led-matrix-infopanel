# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# install dependencies
#RUN apt-get update && apt-get install libyaml-dev python3-setuptools -y

# copy the content of the local src directory to the working directory
RUN git clone https://github.com/breiti78/infopanel.git\
    && cd infopanel \
    && python3 --version

# Run installation of rpi-grb-led-matrix
RUN python3 setup.py install