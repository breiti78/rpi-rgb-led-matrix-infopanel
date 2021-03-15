# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

#ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# install dependencies
RUN apt-get install libyaml-dev python3-setuptools git -y\
    && mkdir infopanel 

# copy the content of the local src directory to the working directory

COPY infopanel-config.yaml /app/infopanel
COPY ./src/infopanel/* /app/infopanel

WORKDIR /app/infopanel

# Run installation of rpi-grb-led-matrix

RUN ls\
    && python3 setup.py install