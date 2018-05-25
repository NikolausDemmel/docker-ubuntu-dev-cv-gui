FROM nikolausdemmel/ubuntu-dev-cv:14.04

# non-persistent environment variables
ARG DEBIAN_FRONTEND=noninteractive

# Install libs
RUN apt-get update && apt-get install -y \
    libglew-dev qt5-default libqt5svg5-dev