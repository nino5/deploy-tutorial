#!/bin/bash
docker run --rm -ti \
           -p 1337:1337 \
           -v /Users/bobi/Downloads:/Users/bobi/Downloads \
           -v /Users/bobi/.docker:/root/.docker \
           -v /Users/bobi/.ssh:/root/.ssh \
           -v /var/run/docker.sock:/var/run/docker.sock \
           perennial/deploy:master \
           deploy "$@" --config /Users/bobi/Downloads/deploy.config.yml
