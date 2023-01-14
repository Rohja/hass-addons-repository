FROM seanriggs/pi-weather-station:latest

RUN mkdir /data

RUN mv /app/settings.json /data/settings.json

RUN ln -s /data/settings.json /app/settings.json

RUN ls -lah /app