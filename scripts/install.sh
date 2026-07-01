#!/bin/bash

set -e

echo "======================================="
echo " LAB IA - INSTALL"
echo "======================================="

kubectl apply -f 00-namespace/ || true
kubectl apply -f 01-storage/ || true
kubectl apply -f 02-postgres/ || true
kubectl apply -f 03-ollama/ || true
kubectl apply -f 04-open-webui/ || true
kubectl apply -f 05-chromadb/ || true
kubectl apply -f 06-n8n/ || true
kubectl apply -f 07-ingress/ || true
kubectl apply -f 08-monitoring/ || true
kubectl apply -f 09-continue/ || true
kubectl apply -f 10-openhands/ || true

echo
echo "======================================="
echo "Instalação concluída."
echo "======================================="
