#!/bin/bash
echo "$CLUSTER_AUTH" | base64 -d | tee /kubeconfig &> /dev/null
