terraform {
  required_version = ">= 1.0"
}

provider "azurerm" {
  features = {}
}

# example resource (replace with your provider & config)
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}
