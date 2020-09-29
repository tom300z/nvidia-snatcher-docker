#/bin/bash

cd /opt/nvidia-snatcher/

# Download/Update the nvidia snatcher
git clone https://github.com/jef/nvidia-snatcher.git .
git pull --all

# Install and run
npm install
npm run start
