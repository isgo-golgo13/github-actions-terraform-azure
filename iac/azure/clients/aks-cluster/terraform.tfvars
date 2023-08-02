az_rgname                           = "rg-azodghaoidcakspoc"
az_rglocation                       = "east us"
az_aks_environment                  = "nonprod"

az_rgtags = {
  appname = "od-gha-oidcpoc"
  owner = "azure_admins@officedepot.com"
  dept = "azure-admins"
  costcenter = 10012
  environment = "sandbox"
  complianceclassification = "NONE"
}

az_aks_cluster_default_nodepool_vm_size = "Standard_DS2_v2"
az_aks_cluster_loadbalancer_network_profile_sku = "standard"
az_aks_cluster_loadbalancer_network_profile_network_plugin  = "azure"