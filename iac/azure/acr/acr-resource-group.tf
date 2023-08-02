resource "azurerm_resource_group" "this" {
    name = var.az_rgname 
    location = var.az_rglocation 

    tags = var.az_rgtags
}