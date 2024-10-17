#!/bin/bash

# Variables (à remplacer par vos propres valeurs)
COMPARTMENT_ID="<COMPARTMENT_OCID>"   # OCID de votre compartment
APPLICATION_ID="<APPLICATION_OCID>"   # OCID de l'application de la fonction
FUNCTION_ID="<FUNCTION_OCID>"         # OCID de la fonction OCI

# Corps de la requête (si nécessaire)
REQUEST_PAYLOAD='{"example": "value"}'

# Appel de la fonction OCI via OCI CLI
oci fn function invoke \
  --function-id $FUNCTION_ID \
  --file <(echo "$REQUEST_PAYLOAD") \
  --invoke-type Sync
