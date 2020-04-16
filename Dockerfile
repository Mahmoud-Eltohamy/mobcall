FROM ubuntu:18.04
LABEL maintainer="Mahmoud Eltohamy <mahmoud.mohammed.elhady@gmail.com>"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    openjdk-8-jdk \
    ca-certificates \
    tzdata \
    zip \
    unzip \
    curl \
    wget \
    libqt5webkit5 \
    libgconf-2-4 \
    apt-utils \
    xvfb \
    gnupg \
    sudo \
    gcc \
    g++ \
    make \
    git \
    salt-minion \
    python \
    python-dev \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools && pip install uwsgi click==6.7 Flask==1.0.2 itsdangerous==0.24 Jinja2==2.10 MarkupSafe==1.0 Werkzeug==0.14.1
#COPY ./ ./mobcall
#WORKDIR ./mobcall
EXPOSE 80
#CMD ["bash", "./run.sh"]
