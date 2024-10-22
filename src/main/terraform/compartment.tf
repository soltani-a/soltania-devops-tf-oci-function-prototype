resource "oci_identity_compartment" "my_compartment" {
  # Nom du compartiment
  name = "my_compartment_name"
  # Description du compartiment
  description = "My new compartment created using Terraform"
  # OCID de la racine du compartiment parent (généralement le tenancy)
  compartment_id = var.oci_provider_tenancy_ocid
  # Définit si le compartiment est actif ou non (actif par défaut)
  enable_delete = false
}

# Créer un VCN
resource "oci_core_vcn" "my_vcn" {
  compartment_id = oci_identity_compartment.my_compartment.id
  cidr_block     = "10.0.0.0/24" # Plage CIDR réduite pour minimiser l'allocation IP
  display_name   = "my_vcn"
}

resource "oci_core_subnet" "my_private_subnet" {
  compartment_id             = oci_identity_compartment.my_compartment.id
  vcn_id                     = oci_core_vcn.my_vcn.id
  cidr_block                 = "10.0.0.0/28"
  prohibit_public_ip_on_vnic = true
  display_name               = "my_private_subnet"
  # Retirer le dns_label si le DNS n'est pas activé pour le VCN
  # dns_label           = "private"
}