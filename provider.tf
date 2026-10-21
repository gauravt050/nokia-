resource "azurerm_resource_group" "rgsts91" {
    name = "test-rg103"
    location = "southindia"
}
resource "azurerm_storage_account" "stg99" {
    name = "newraghacstorgaacoont32"
  location = "centralindia"
  account_replication_type = "LRS"
  account_tier = "Standard"
  resource_group_name = "test-rg11"
}
terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=4.80.0"
      }
    }
}

provider "azurerm" {
    features {}
  
}