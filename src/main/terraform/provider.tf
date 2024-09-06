terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.6.0"
    }
  }
}

provider "oci" {
  region           = var.region
  auth             = "APIKey"
  tenancy_ocid     = var.oci_provider_tenancy_ocid
  user_ocid        = var.oci_provider_user_ocid
  fingerprint      = var.oci_provider_fingerprint
  private_key_path = var.oci_provider_private_key_path
  #config_file_profile = "learn-terraform"
}
