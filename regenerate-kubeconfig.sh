#!/usr/bin/env bash

echo "recreating ~/.kube/config from the actual config..."
kubectl config view --flatten > ~/.kube/config
