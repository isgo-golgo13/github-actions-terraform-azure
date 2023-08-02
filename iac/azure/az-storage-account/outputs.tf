
# To view the two SAS tokens

output "sas_container_query_string" {
    value = nonsensitive(data.azurerm_storage_account_blob_container_sas.this.sas)
    
}

output "sas_storage_query_string" {
    value = nonsensitive(data.azurerm_storage_account_sas.this.sas)
    
}