module "az-acr" {
    source = "../../acr"

    az_rgname = var.az_rgname
    az_rglocation = var.az_rglocation
    az_rgtags = var.az_rgtags
    az_acr_sku = var.az_acr_sku
    az_acr_admin_enabled = var.az_acr_admin_enabled
    az_acr_dns_prefix = var.az_acr_dns_prefix
    az_acr_name = var.az_acr_name
    
}