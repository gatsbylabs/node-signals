# node-signals

A lightweight docker image with:
 - [node-alpine](https://github.com/nodejs/docker-node)
 - [dumb-init](https://github.com/Yelp/dumb-init)
 - [curl](https://github.com/curl/curl-docker)

This image allows propagating system signals coming from docker and kubernetes to all the subprocesses.
