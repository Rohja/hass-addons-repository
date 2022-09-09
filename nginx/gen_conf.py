#!/usr/bin/env python3

import json

NGINX_TEMPLATE_PATH = "/docker-entrypoint.d/nginx_config.tpl"
NGINX_CONFIG_PATH = "/etc/nginx/conf.d/default.conf"
CONTAINER_CONFIG_PATH = "/data/options.json"

print(f"Generating {NGINX_CONFIG_PATH}")
with open(CONTAINER_CONFIG_PATH) as f:
    config = json.loads(f.read())

locations = []

for entry in config['reverse_proxy']:
    print(entry["path"], "->", entry["dest"])
    location = """
    location PATH {
       proxy_pass   DEST;
    }
    """.replace("PATH", entry["path"]).replace("DEST", entry["dest"])
    locations.append(location)

with open(NGINX_TEMPLATE_PATH, "r") as f:
    template = f.read()

template = template.replace("##LOCATIONS##", "\n".join(locations))

with open(NGINX_CONFIG_PATH, "w") as f:
    f.write(template)

print("Done generating configuration.")
