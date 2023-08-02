variable "az_rgname" {
  type        = string
  description = "az resourcegroup name"
}

variable "az_rglocation" {
  type        = string
  description = "az resoucegroup location"
}

variable "az_rgtags" {
  type = map(any)
  description = "az resource group tags containing od required policy tags"
}

variable "az_storage_account_name" {
  type        = string
  description = "az storage account name"
}

variable "az_storage_account_tier" {
  type        = string
  description = "az storage account tier"
}

variable "az_storage_account_replication_type" {
  type        = string
  description = "az storage account replication type"

}

variable "az_storage_account_tags" {
  type        = map(any)
  description = "az storage account tags"
}

variable "az_storage_container_name" {
  type        = string
  description = "az storage container name"
}

variable "az_storage_container_access_type" {
  type        = string
  description = "az storage container type"
}

variable "az_storage_account_sas_http_only" {
  type        = bool
  description = "true or false to allow http protocol only for az storage account sas"
  default     = true
}

variable "az_storage_account_sas_start_date" {
  type        = string
  description = "start date effective of az storage account sas"
}

variable "az_storage_account_sas_expiry_date" {
  type        = string
  description = "expiry date effective of az storage account sas"
}

variable "az_storage_account_blob_container_sas_start_date" {
  type        = string
  description = "start date effective of az storage account blob container sas"
}

variable "az_storage_account_blob_container_sas_expiry_date" {
  type        = string
  description = "expiry date effective of az storage account blob container sas"
}

variable "az_storage_account_blob_container_sas_http_only" {
  type        = bool
  description = "true or false to allow http protocol only for az storage account blob container sas"
  default     = true
}

variable "az_storage_account_blob_container_sas_cache_control" {
  type = string
}

variable "az_storage_account_blob_container_sas_content_disposition" {
  type = string
}

variable "az_storage_account_blob_container_sas_content_encoding" {
  type = string
}

variable "az_storage_account_blob_container_sas_content_language" {
  type = string
}

variable "az_storage_account_blob_container_sas_content_type" {
  type = string
}

