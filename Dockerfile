# set base image (host OS)
FROM breiti78/rpi-rgb-led-matrix-docker:latest

#ARG DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /app

# install dependencies
RUN python3 --version
RUN pip -V
RUN pip3 -V
RUN python3 -m pip install --upgrade pip 
RUN python3 -m pip install --upgrade Pillow
RUN apt-get install libyaml-dev python3-setuptools git -y

RUN git clone https://github.com/breiti78/infopanel.git\
    && cd infopanel\
    && python3 setup.py install