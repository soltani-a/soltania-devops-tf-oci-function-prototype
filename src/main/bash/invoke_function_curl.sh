#!/bin/bash

# Variables (à remplacer par vos propres valeurs)
API_GATEWAY_URL="<API_GATEWAY_URL>"  # L'URL publique de votre API Gateway
API_PATH="/hello"                    # Le chemin de votre fonction dans l'API Gateway
AUTH_TOKEN="<OCI_AUTH_TOKEN>"        # Authentification avec un token OCI si nécessaire

# Corps de la requête (si nécessaire)
REQUEST_PAYLOAD='{"example": "value"}'

# Appel de la fonction via API Gateway avec curl
curl -X POST "${API_GATEWAY_URL}${API_PATH}" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${AUTH_TOKEN}" \
  -d "$REQUEST_PAYLOAD"
