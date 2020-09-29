#FROM node:slim
#FROM node:alpine
FROM buildkite/puppeteer

# Install required packages and delete the cache to save space
RUN apt-get update
RUN apt-get install -y git
RUN rm -rf /var/lib/apt/lists/*
#ENV DISPLAY :0


# Make the installation directory
RUN mkdir /opt/nvidia-snatcher/

#RUN chown -R node:node /opt/nvidia-snatcher/

#SER node

# Install nvidia-snatcher
#RUN cd /opt/nvidia-snatcher/;  https://github.com/jef/nvidia-snatcher.git .; npm install

#COPY xorg.conf /etc/X11/xorg.conf


# Copy the start script to the container
COPY start.sh /start.sh

# Set the start script as entrypoint
ENTRYPOINT ./start.sh
