module "az-aks-cluster" {
    source = "../../aks-cluster"

    az_rgname = var.az_rgname
    az_rglocation = var.az_rglocation
    az_rgtags = var.az_rgtags
    az_aks_environment = var.az_aks_environment
    az_aks_cluster_default_nodepool_vm_size = var.az_aks_cluster_default_nodepool_vm_size
    az_aks_cluster_loadbalancer_network_profile_sku = var.az_aks_cluster_loadbalancer_network_profile_sku
    az_aks_cluster_loadbalancer_network_profile_network_plugin = var.az_aks_cluster_loadbalancer_network_profile_network_plugin

}