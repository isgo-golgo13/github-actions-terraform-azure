module "az_storage_account" {
  source = "../../az-storage-account"

  # input var of module = input var of module caller (var.*) values are supplied from included terraform.tfvars
  az_rgname                                                 = var.az_rgname
  az_rglocation                                             = var.az_rglocation
  az_rgtags                                                 = var.az_rgtags
  az_storage_account_name                                   = var.az_storage_account_name
  az_storage_account_tier                                   = var.az_storage_account_tier
  az_storage_account_replication_type                       = var.az_storage_account_replication_type
  az_storage_account_tags                                   = var.az_storage_account_tags
  az_storage_container_name                                 = var.az_storage_container_name
  az_storage_container_access_type                          = var.az_storage_container_access_type
  az_storage_account_sas_http_only                          = var.az_storage_account_sas_http_only
  az_storage_account_sas_start_date                         = var.az_storage_account_sas_start_date
  az_storage_account_sas_expiry_date                        = var.az_storage_account_sas_expiry_date
  az_storage_account_blob_container_sas_start_date          = var.az_storage_account_blob_container_sas_start_date
  az_storage_account_blob_container_sas_expiry_date         = var.az_storage_account_blob_container_sas_expiry_date
  az_storage_account_blob_container_sas_http_only           = var.az_storage_account_blob_container_sas_http_only
  az_storage_account_blob_container_sas_cache_control       = var.az_storage_account_blob_container_sas_cache_control
  az_storage_account_blob_container_sas_content_disposition = var.az_storage_account_blob_container_sas_content_disposition
  az_storage_account_blob_container_sas_content_encoding    = var.az_storage_account_blob_container_sas_content_encoding
  az_storage_account_blob_container_sas_content_language    = var.az_storage_account_blob_container_sas_content_language
  az_storage_account_blob_container_sas_content_type        = var.az_storage_account_blob_container_sas_content_type
}

