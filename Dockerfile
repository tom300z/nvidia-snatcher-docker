FROM buildkite/puppeteer

# Install required packages and delete the cache to save space
RUN apt-get update
RUN apt-get install -y git
RUN rm -rf /var/lib/apt/lists/*


# Make the installation directory
RUN mkdir /opt/nvidia-snatcher/

# Copy the start script to the container
COPY start.sh /start.sh

# Set the start script as entrypoint
ENTRYPOINT ./start.sh
