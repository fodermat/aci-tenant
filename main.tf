terraform {
    required_providers {
        aci = {
            source = "ciscodevnet/aci"
	    version = "~> 2.6.0"
            }
        }   
}

## Updated provider version ##

provider "aci" {
  username = "${var.apic_username}"
  password = "${var.apic_password}"
  url      = "${var.apic_url}"
  insecure = true
}

resource "aci_tenant" "TF_tenant" {
  name = "${var.tenant}"
  description =   "Created by Terraform Cloud"
}
