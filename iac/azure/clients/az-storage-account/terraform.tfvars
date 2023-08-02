az_rglocation                       = "east us"
az_rgname                           = "rg-azodghaoidcpoc"
az_rgtags = {
  appname = "od-gha-oidcpoc"
  owner = "azure_admins@officedepot.com"
  dept = "azure-admins"
  costcenter = 10012
  environment = "sandbox"
  complianceclassification = "NONE"
}
az_storage_account_name             = "saazodghaoidcpoc"
az_storage_account_tier             = "Standard"
az_storage_account_replication_type = "GRS"
az_storage_account_tags = {
  environment = "sandbox"
}

az_storage_container_name        = "azodghaoidcpocstate"
az_storage_container_access_type = "private"

az_storage_account_sas_start_date                         = "2022-12-1"
az_storage_account_sas_expiry_date                        = "2025-12-1"
az_storage_account_sas_http_only                          = true
az_storage_account_blob_container_sas_start_date          = "2022-12-1"
az_storage_account_blob_container_sas_expiry_date         = "2025-12-1"
az_storage_account_blob_container_sas_http_only           = true
az_storage_account_blob_container_sas_cache_control       = "max-age=5"
az_storage_account_blob_container_sas_content_disposition = "inline"
az_storage_account_blob_container_sas_content_encoding    = "deflate"
az_storage_account_blob_container_sas_content_language    = "en-US"
az_storage_account_blob_container_sas_content_type        = "application/json"
