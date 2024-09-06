# API Gateway pour exposer la fonction
resource "oci_apigateway_gateway" "my_api_gateway" {
  compartment_id = var.compartment_id
  subnet_id = var.subnet_id
  display_name   = "my_api_gateway"
  endpoint_type  = "PUBLIC"
}

# Déploiement de l'API
resource "oci_apigateway_deployment" "api_deployment" {
  gateway_id     = oci_apigateway_gateway.my_api_gateway.id
  compartment_id = var.compartment_id
  display_name   = "my_api_deployment"
  path_prefix = "/v1"   


  # Bloc "specification" requis pour l'API Gateway
  specification {
    request_policies {}
    routes {
      path       = "/invoke_function"
      methods    = ["GET"]
      backend {
        type       = "ORACLE_FUNCTIONS_BACKEND"
        function_id = oci_functions_function.my_function.id
      }
    }
  }
}