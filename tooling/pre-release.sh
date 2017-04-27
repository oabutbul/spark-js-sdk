#!/bin/bash

set -e

echo "################################################################################"
echo "# REBUILDING WITHOUT NODE_ENV"
echo "################################################################################"
unset NODE_ENV
docker run ${DOCKER_RUN_OPTS} npm run build

echo "################################################################################"
echo "# BUILDING DOCS"
echo "################################################################################"
npm run grunt:concurrent -- build:docs