resource "azurerm_resource_group" "this" {
    name = var.az_rgname 
    location = var.az_rglocation 

    # tags = var.az_storage_account_tags
    tags = var.az_rgtags
}