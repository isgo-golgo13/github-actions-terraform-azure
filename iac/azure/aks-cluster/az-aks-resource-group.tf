resource "azurerm_resource_group" "az_aks_rg" {
    name = var.az_rgname 
    location = var.az_rglocation 

    tags = var.az_rgtags
}