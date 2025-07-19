#!/bin/bash

set -e

ENV=$1

if [[ -z "$ENV" ]]; then
  echo "Uso: $0 [develop|main]"
  exit 1
fi


URL="http://localhost:5000/health"

echo "Ejecutando health check en entorno $ENV para $URL"

if curl -s --fail $URL; then
  echo "Health check OK en $ENV"
  exit 0
else
  echo "Health check FALLÓ en $ENV"
  exit 1
fi
