
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "b5afa284-eb68-4491-9150-72659f4c1a56"
}