data "azurerm_kubernetes_service_versions" "current" {
  location = azurerm_resource_group.az_aks_rg.location
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  dns_prefix          = azurerm_resource_group.az_aks_rg.name
  location            = azurerm_resource_group.az_aks_rg.location
  name                = "${azurerm_resource_group.az_aks_rg.name}-cluster"
  resource_group_name = azurerm_resource_group.az_aks_rg.name
  kubernetes_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  node_resource_group = "${azurerm_resource_group.az_aks_rg.name}-nrg"


  default_node_pool {
    name       = "systempool"
    vm_size    = var.az_aks_cluster_default_nodepool_vm_size
    orchestrator_version = data.azurerm_kubernetes_service_versions.current.latest_version
    zones   = [1, 2, 3]
    enable_auto_scaling  = true
    max_count            = 3
    min_count            = 1
    os_disk_size_gb      = 30
    type           = "VirtualMachineScaleSets"
    node_labels = {
      "nodepool-type" = "system"
      "environment"   = var.az_aks_environment
      "nodepoolos"    = "linux"
      "app"           = "system-apps"
    }
    tags = {
      "nodepool-type" = "system"
      "environment"   = var.az_aks_environment
      "nodepoolos"    = "linux"
      "app"           = "system-apps"
    }    
  }

# Identity (System Assigned or Service Principal)
  identity { type = "SystemAssigned" }

# Add On Profiles Pre-AzureRM 3.0
  # addon_profile {
  # #   azure_policy { enabled = true }
  #   oms_agent {
  #     enabled                    = true
  #     log_analytics_workspace_id = azurerm_log_analytics_workspace.insights.id
  #   }
  # }

# AzureRM provider >=3.0 changes (Azure Policy)
  azure_policy_enabled = true
  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.insights.id
  }
  

# RBAC and Azure AD Integration Block Pre-AzureRM 3.0
  # role_based_access_control {
  #   enabled = true
  #   azure_active_directory {
  #     managed                = true
  #     admin_group_object_ids = [azuread_group.aks_administrators.id]
  #   }
  # }  
  
  # AzureRM provider >=3.0 changes (Azure AD RBAC)
  azure_active_directory_role_based_access_control {
    managed                = true
    # admin_group_object_ids = [azuread_group.aks_administrators.id]  #Produces Insufficient privileges error during `tf apply`
    azure_rbac_enabled     = true
  }

# Network Profile
  network_profile {
    load_balancer_sku = var.az_aks_cluster_loadbalancer_network_profile_sku
    network_plugin = var.az_aks_cluster_loadbalancer_network_profile_network_plugin
  }

# AKS Cluster Tags 
  tags = {
    Environment = var.az_aks_environment
  }

}

