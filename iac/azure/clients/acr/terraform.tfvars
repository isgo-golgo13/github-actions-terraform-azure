az_rgname                           = "rg-azodghaoidcacrpoc"
az_rglocation                       = "east us"
az_acr_sku                          = "Standard"
az_acr_admin_enabled                = true 
az_acr_dns_prefix                   = "odghaoidc"
az_acr_name                         = "poc"

az_rgtags = {
  appname = "od-gha-oidcpoc"
  owner = "azure_admins@officedepot.com"
  dept = "azure-admins"
  costcenter = 10012
  environment = "sandbox"
  complianceclassification = "NONE"
}