variable "region" {
  type = string
}

variable "compartment_id" {
  type = string
}

variable "subnet_id" {
  description = "The OCID of the subnet where the function will be deployed"
  type        = string
}

variable "paas_compartment_id" {
  type = string
}

variable "integration_instance_display_name" {
  type    = string
  default = "integration-test-by-slim"
}

variable "oci_provider_auth" {}
variable "oci_provider_tenancy_ocid" {}
variable "oci_provider_user_ocid" {}
variable "oci_provider_fingerprint" {}
variable "oci_provider_private_key_path" {}