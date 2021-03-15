# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

#ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# install dependencies
RUN apt-get install libyaml-dev python3-setuptools git -y\
    && git clone https://github.com/breiti78/infopanel.git\
    && ls -l\
    && cd infopanel\
    && ls -l\
    && python3 setup.py install