#!/bin/bash

ACTION=$1

# Dev script to apply running config to microk8s cluster
microk8s kubectl $ACTION -f dep-locust-master.yaml -f svc-locust-service.yaml -f dep-locust-worker.yaml -f ing-locust-ui.yaml