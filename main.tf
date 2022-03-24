resource "aci_tenant" "TF_tenant" {
  name = "${var.tenant}"
  description =   "Created by Terraform Cloud"
}
