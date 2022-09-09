#!/bin/bash

set -eo pipefail

/docker-entrypoint.d/gen_conf.py
