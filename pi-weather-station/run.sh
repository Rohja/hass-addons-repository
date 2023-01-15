#!/usr/bin/with-contenv bashio

echo "Generating config file..."

MAPS_API_KEY=$(bashio::config 'maps_api_key')
WEATHER_API_KEY=$(bashio::config 'weather_api_key')
GEOLOCATION_API_KEY=$(bashio::config 'geolocation_api_key')

LATITUDE=$(bashio::config 'latitude')
LONGITUDE=$(bashio::config 'longitude')

cat << EOF > /app/settings.json
{"weatherApiKey":"${WEATHER_API_KEY}",
 "mapApiKey":"${MAPS_API_KEY}",
 "reverseGeoApiKey":"${GEOLOCATION_API_KEY}",
 "startingLat":"${LATITUDE}",
 "startingLon":"${LONGITUDE}"}
EOF

echo "Starting Pi Weather Station..."

cd /app && npm start