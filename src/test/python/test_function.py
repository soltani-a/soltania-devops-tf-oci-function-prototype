import io
import json
import sys
import os
import pytest

# Ajouter src/main/python au chemin de recherche des modules Python
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../../main/python')))

# Importer la fonction handler après avoir modifié le chemin
from function import handler

def test_handler():
    # Simuler un appel sans données
    result = handler(None)

    # Parser la réponse JSON
    parsed_result = json.loads(result)

    # Vérifier que le message est correct
    assert parsed_result["message"] == "Hello, World!"
