#!/usr/bin/env bashio

REVERSE_PROXY=$(bashio::config 'reverse_proxy')

bashio::log.info "${REVERSE_PROXY}"

while true
do
  echo Waiting
  sleep 10
done