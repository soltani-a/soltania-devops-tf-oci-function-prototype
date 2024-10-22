resource "oci_functions_application" "function_app" {
  display_name   = "my_function_app"
  compartment_id = oci_identity_compartment.my_compartment.id
  subnet_ids     = [oci_core_subnet.my_private_subnet.id] # Ajout du subnet_id
}

# Fonction OCI avec le code source local
resource "oci_functions_function" "my_function" {
  display_name       = "my_function"
  application_id     = oci_functions_application.function_app.id
  memory_in_mbs      = 256
  timeout_in_seconds = 30
}