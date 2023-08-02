
locals {
  acr_name = "${replace(var.az_acr_dns_prefix, "-", "")}${replace(var.az_acr_name, "-", "")}acr"
}

resource "azurerm_container_registry" "this" {
  name                     = local.acr_name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  sku                      = var.az_acr_sku
  admin_enabled            = var.az_acr_admin_enabled
}