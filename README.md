# Locust Kubernetes

This repository contains a working Kubernetes deployment for
the Locust load testing framework.

## Prerequisites

This deployment uses the Microk8s https://microk8s.io/
local Kubernetes single-node cluster as it exists entirely
for demonstrative purposes. This configuration has only 
been tested on Linux for this reason.

## Base Locust Image

The base Docker image used within this demo can be found in
the associated docker-compose flavoured repo found here: 
https://github.com/Mquinn960/locust-docker-compose

This K8s stack also makes use of this image for simplicity,
so this will require a build of the docker image pushed to
the local Microk8s image repository running at localhost:32000
in order to work.

## Locust Files

The Locust files used in this demonstration can be found in
the repository here: https://github.com/Mquinn960/locust-files

## Run Commands

In order to alter and run this deployment, you can use the
```dev-action.sh``` script, passing the required parameter:

- create
  - Creates the stack 
- delete
  - Deletes the stack
- apply
  - Applies any config changes to the running deployment

For example:

```sudo bash dev-action.sh delete```

The deployment can also be managed from ```kubectl``` in
the standard manner.

## Disclaimer

This setup is not intended for production usage, and care
should be exercised in order to not execute inadvertant
DDOS attacks on unwitting hosts.