terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Specify the version or range you need
    }
  }

  backend "azurerm" {
    # Your backend configuration
  }
}

provider "azurerm" {
  features {}
}
