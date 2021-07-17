terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "random_uuid" "id" {
}

resource "azurerm_resource_group" "test" {
  name     = "${random_uuid.id.result}-rg"
  location = "East US2"
  tags = {
    "sample" = var.tag_name
  }
}
