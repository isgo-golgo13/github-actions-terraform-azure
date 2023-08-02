terraform {
  required_version = "1.3.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-azodghaoidcpoc"
    storage_account_name = "saazodghaoidcpoc"
    container_name       = "azodghaoidcpocstate"
    key                  = "aks.oidcgha.tfstate"
  }
}

provider "azurerm" {
  features {}

  use_oidc = true
}
