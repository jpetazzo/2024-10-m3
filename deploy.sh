#!/bin/sh
set -e

helm upgrade --install hasher ./generic-chart \
  --set image.repository=dockercoins/hasher \
  #

helm upgrade --install redis ./generic-chart \
  --set image.repository=redis \
  --set image.tag=latest \
  --set service.port=6379 \
  #

helm upgrade --install rng ./generic-chart \
  --set image.repository=dockercoins/rng \
  #

helm upgrade --install webui ./generic-chart \
  --set image.repository=dockercoins/webui \
  --set service.type=NodePort \
  #

helm upgrade --install worker ./generic-chart \
  --set image.repository=dockercoins/worker \
  #
