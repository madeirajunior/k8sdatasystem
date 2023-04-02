#!/bin/bash

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/

kubectl apply -f jupyterhub-svc-sa.yaml

helm upgrade --install jupyterhub jupyterhub/jupyterhub --timeout 10m --version 1.2.0 -f values.yaml --namespace k8sdatasystem
