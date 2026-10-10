terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "b18g27_backend_rg"
    storage_account_name = "b18g27backendstorage"
    container_name       = "b18g27container"
    key                  = "kaifyterraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}