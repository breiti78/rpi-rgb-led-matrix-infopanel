# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# install dependencies
RUN apt-get install libyaml-dev python3-setuptools git python3-matplotlib -y
# copy the content of the local src directory to the working directory

COPY ./src .

WORKDIR /app/infopanel

# Run installation of rpi-grb-led-matrix

RUN python3 setup.py install
