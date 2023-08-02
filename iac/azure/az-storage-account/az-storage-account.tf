resource "azurerm_storage_account" "this" {
    name = var.az_storage_account_name
    resource_group_name = azurerm_resource_group.this.name
    location = azurerm_resource_group.this.location
    account_tier = var.az_storage_account_tier
    account_replication_type = var.az_storage_account_replication_type
    enable_https_traffic_only = true
    min_tls_version = "TLS1_2"

    tags = var.az_storage_account_tags
}

resource "azurerm_storage_container" "this" {
    name = var.az_storage_container_name
    storage_account_name = azurerm_storage_account.this.name
    container_access_type = var.az_storage_container_access_type
}