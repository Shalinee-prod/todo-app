terraform {
    backend "azurerm" {
    resource_group_name = "rg-shalini"
    storage_account_name = "shalinistg"
    container_name = "statefile"
    key = "remote.terrform.tfstate"
}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" 
      version = "~> 4.0"
    }
  }
} 
provider "azurerm" {
  features {}
  subscription_id = "748e8071-e0af-4667-88b7-fc074b560b8a"
}
resource "azurerm_resource_group" "rg" {
    name = "rg1"
    location = "East US"
}
resource "azurerm_resource_group" "rg1" {
    name = "rg2"
    location = "East US"
}
resource "azurerm_resource_group" "rg2" {
    name = "rg3"
    location = "East US"
  
}





