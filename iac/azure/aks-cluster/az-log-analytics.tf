# Create Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "insights" {
  name                = "${var.az_aks_environment}-logs-aks-cluster-poc"
  location            = azurerm_resource_group.az_aks_rg.location
  resource_group_name = azurerm_resource_group.az_aks_rg.name
  retention_in_days   = 30
}