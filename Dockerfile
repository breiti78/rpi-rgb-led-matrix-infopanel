# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

#ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt requirements.txt

WORKDIR /app

# install dependencies
RUN apt-get install libyaml-dev python3-setuptools git python3-matplotlib -y
    #&& python3 -m pip install --upgrade pip\
    #&& python3 -m pip install --upgrade Pillow\
    #&& pip install -r requirements.txt

# copy the content of the local src directory to the working directory

COPY ./src .
COPY infopanel-config.yaml /app/infopanel

WORKDIR /app/infopanel

# Run installation of rpi-grb-led-matrix

RUN python3 setup.py install
