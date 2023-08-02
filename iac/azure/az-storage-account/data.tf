data "azurerm_storage_account_sas" "this" {
    connection_string = azurerm_storage_account.this.primary_connection_string
    https_only = var.az_storage_account_sas_http_only
    signed_version = "2017-07-29"
    start = var.az_storage_account_sas_start_date
    expiry = var.az_storage_account_sas_expiry_date

    services {
      blob = true 
      queue = false 
      table = false 
      file = false 
    }

    resource_types {
      service = true 
      container = true 
      object = true 
    }

    permissions {
      read = true 
      write = true 
      delete = true 
      list = true 
      add = true 
      create = true 
      update = true 
      process = true 
      filter = true
      tag =  true
    }
}

data "azurerm_storage_account_blob_container_sas" "this" {
    connection_string = azurerm_storage_account.this.primary_connection_string
    container_name = azurerm_storage_container.this.name
    https_only = true 
    start = var.az_storage_account_blob_container_sas_start_date
    expiry = var.az_storage_account_blob_container_sas_expiry_date

    permissions {
      read = true
      add = true
      create = true
      write = true
      delete = true
      list = true
    }

    cache_control = var.az_storage_account_blob_container_sas_cache_control
    content_disposition = var.az_storage_account_blob_container_sas_content_disposition
    content_encoding = var.az_storage_account_blob_container_sas_content_encoding
    content_language = var.az_storage_account_blob_container_sas_content_language
    content_type = var.az_storage_account_blob_container_sas_content_type
}

