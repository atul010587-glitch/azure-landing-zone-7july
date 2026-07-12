terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm"{
    resource_group_name = "qa-rg"
    storage_account_name = "qafasttagstorage"
    tenant_id = "22b1c883-8dc2-44e2-b91a-ada4f3c49850"
    container_name = "statefile"
    key = "subnet.statefile"
  }
}

provider "azurerm" {
  features {}
}