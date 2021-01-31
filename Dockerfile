FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# Install the depenencies from Linux Dependencies.md in the juce repo
RUN apt update
RUN apt install -y \
    libasound2-dev \
    libjack-jackd2-dev \
    libcurl4-openssl-dev \
    libfreetype6-dev \
    libx11-dev \
    libxcomposite-dev \
    libxcursor-dev \
    libxext-dev \
    libxinerama-dev \
    libxrandr-dev \
    libxrender-dev \
    libwebkit2gtk-4.0-dev \
    libglu1-mesa-dev \
    mesa-common-dev \
    build-essential \
    cmake

RUN rm -rf /var/lib/apt/lists/* && \
    apt clean

ENTRYPOINT ["/entrypoint.sh"]
