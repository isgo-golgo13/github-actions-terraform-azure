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


# Azure AKS Environment Name
variable "az_aks_environment" {
  type = string  
  description = "This variable defines the Environment"  
}

variable "az_aks_cluster_default_nodepool_vm_size" {
    type = string 
    description = "az aks cluster default node pool size"
}


variable "az_aks_cluster_loadbalancer_network_profile_sku" {
    type = string 
    description = "az aks cluster network profile sku "
}

variable "az_aks_cluster_loadbalancer_network_profile_network_plugin" {
    type = string 
    description = "az aks cluster network profile network plugin"
}

