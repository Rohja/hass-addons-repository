FROM nginx:latest

RUN apt update && apt install -y python3

COPY 40-gen-configuration.sh /docker-entrypoint.d/40-gen-configuration.sh
COPY gen_conf.py             /docker-entrypoint.d/gen_conf.py
COPY nginx_config.tpl        /docker-entrypoint.d/nginx_config.tpl
