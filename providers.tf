terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "73f88e6b-3a35-4612-b550-555157e7059f"
  tenant_id         = "cef04b19-7776-4a94-b89b-375c77a8f936"
}