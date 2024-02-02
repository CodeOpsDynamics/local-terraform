locals {
  rg  = "rg1"
  rge = "1strg"
  tags = {
    environment = "terraform demo"
    managed_by  = "terraform"
  }
}


resource "azurerm_resource_group" "rgconnect" {
  for_each = var.rg
  name     = "${local.rg}${each.value.name}${local.rge}"
  location = "West Europe"

tags = local.tags
}
