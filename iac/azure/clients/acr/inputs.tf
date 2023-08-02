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

variable "az_acr_dns_prefix" {
    type = string
    description = "az acr dns prefix"
}

variable "az_acr_name" {
    type = string
    description = "az acr dns name"
}

variable "az_acr_sku" {
    type = string
    description = "az acr sku"
}

variable "az_acr_admin_enabled" {
    type = bool
    description = "enable or disable admin access to az acr"
}
