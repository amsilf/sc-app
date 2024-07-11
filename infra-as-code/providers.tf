provider "azuread" {
}

provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 0.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.49.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">=3.0.0"
    }

  }

  backend "azurerm" {
  }
}
