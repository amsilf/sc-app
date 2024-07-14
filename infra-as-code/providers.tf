provider "azuread" {
}

provider "azurerm" {
  features {}

  client_id       = "cae4b1fa-892e-4b0b-a75c-5e67a3887201"
  client_secret   = var.client_secret
  tenant_id       = "40b52d0f-1305-48da-b431-1ad4f9aabe5b"
  subscription_id = "4374baaa-b603-4ca4-8b3f-a6f9ea403e9d"

}

terraform {
  required_version = ">= 0.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">=3.0.0"
    }

  }

  backend "azurerm" {
  }
}