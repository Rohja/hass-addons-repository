ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --update git nodejs npm

RUN git clone https://github.com/Rohja/pi-weather-station.git /app

WORKDIR /app

RUN npm install

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]