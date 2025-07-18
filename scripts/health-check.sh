#!/bin/bash

set -e

ENV=$1

if [[ -z "$ENV" ]]; then
  echo "Uso: $0 [development|staging|production]"
  exit 1
fi

# Cambia esta URL por la correcta según tu app y entorno
URL="http://localhost:8080/health"

echo "Ejecutando health check en entorno $ENV para $URL"

if curl -s --fail $URL; then
  echo "Health check OK en $ENV"
  exit 0
else
  echo "Health check FALLÓ en $ENV"
  exit 1
fi
