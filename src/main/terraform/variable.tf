variable "oci_region" {
  type = string
}

variable "oci_compartment_id" {
  type = string
}

variable "oci_subnet_id" {
  description = "The OCID of the subnet where the function will be deployed"
  type        = string
}

variable "oci_provider_tenancy_ocid" {}
variable "oci_provider_user_ocid" {}
variable "oci_provider_fingerprint" {}
variable "oci_provider_private_key" {}