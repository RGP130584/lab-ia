#!/bin/bash

set -e

echo "======================================="
echo "LAB IA INSTALL"
echo "======================================="

NAMESPACE="lab-ia"

kubectl get namespace $NAMESPACE >/dev/null 2>&1 || \
kubectl create namespace $NAMESPACE

for file in kubernetes/*.yaml
do
    echo
    echo "Aplicando $file"
    kubectl apply -f "$file"
done

echo
echo "======================================="
echo "Instalação concluída."
echo "======================================="
