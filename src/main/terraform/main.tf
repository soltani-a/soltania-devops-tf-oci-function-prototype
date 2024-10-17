resource "oci_functions_application" "function_app" {
  display_name   = "my_function_app"
  compartment_id = var.compartment_id
  subnet_ids     = [var.subnet_id] # Ajout du subnet_id
}

# Fonction OCI avec le code source local
resource "oci_functions_function" "my_function" {
  display_name       = "my_function"
  application_id     = oci_functions_application.function_app.id
  memory_in_mbs      = 256
  timeout_in_seconds = 30
}