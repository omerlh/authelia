#!/bin/bash

set -e

docker-compose \
  -f docker-compose.dev.yml \
  -f example/compose/docker-compose.base.yml \
  -f example/compose/mongo/docker-compose.yml \
  -f example/compose/redis/docker-compose.yml \
  -f example/compose/nginx/backend/docker-compose.yml \
  -f example/compose/nginx/portal/docker-compose.yml \
  -f example/compose/nginx/clients/docker-compose.yml \
  -f example/compose/smtp/docker-compose.yml \
  -f example/compose/httpbin/docker-compose.yml \
  -f example/compose/ldap/docker-compose.admin.yml \
  -f example/compose/ldap/docker-compose.yml $*
