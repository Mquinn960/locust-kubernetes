#!/bin/bash

# Dev script to apply running config to microk8s cluster
mkubectl apply -f dep-locust-master.yaml -f svc-locust-service.yaml -f dep-locust-worker.yaml -f ing-locust-ui.yaml