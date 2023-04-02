#!/bin/bash


kubectl create secret generic my-s3-keys --from-literal=access-key=madeirajunior --from-literal=secret-key=5241@Jrs --namespace k8sdatasystem
kubectl create configmap metastore-cfg --namespace k8sdatasystem --dry-run=client --from-file=build/metastore-site.xml --from-file=build/core-site.xml -o yaml | kubectl apply -f -
