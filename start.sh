#/bin/bash
#Xvfb :0 &

cd /opt/nvidia-snatcher/
git clone https://github.com/jef/nvidia-snatcher.git .
npm install
npm run start
