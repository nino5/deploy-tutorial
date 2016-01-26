#!/bin/bash
docker run --rm -ti \
           -p 1337:1337 \
           -v /Users/Nino/Downloads:/Users/Nino/Downloads \
           -v /Users/Nino/.docker:/root/.docker \
           -v /Users/Nino/.ssh:/root/.ssh \
           -v /var/run/docker.sock:/var/run/docker.sock \
           perennial/deploy:master \
           deploy "$@" --config /Users/Nino/Downloads/deploy.config.yml
