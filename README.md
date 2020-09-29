# nvidia-snatcher-docker


## docker compose example
```
version: "2.2"
services:
  nvidia-snatcher-docker:
    image: tom300z/nvidia-snatcher-docker
    container_name: nvidia-snatcher-docker
    init: true
    environment:
      - 'HEADLESS=true'         #These are important
      - 'OPEN_BROWSER=false'    #These are important
      - 'BROWSER_TRUSTED=true'  #These are important
      - 'EMAIL_USERNAME=real.person@gmail.com'
      - 'EMAIL_PASSWORD=12345'
      - 'IN_STOCK_WAIT_TIME=30'
      - 'STORES=nvidia,amazon-de,evga-eu'
      - 'COUNTRY=germany'
      - 'SCREENSHOT=true'
      - 'TELEGRAM_ACCESS_TOKEN=12345'
      - 'TELEGRAM_CHAT_ID=-12345'
      - 'USER_AGENT=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3874.108 Safari/537.36'
    volumes:
      - ${MASS_STORAGE_PATH}/services/nvidia-snatcher:/opt/nvidia-snatcher    # Optional, but reduces load time
```

## Setup guide
With the compose file above you are pretty much ready to go, just make sure that you set the important environment variables and enclose all of the environment variables in quotes (example: - 'ENV=val').
If you have any issues, feel free to open an issue on github (please dont forget to attach your logs).

Have fun!
