terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "lsastoragedemo"
    container_name       = "tfstate"
    key                  = "tfdemo.dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}