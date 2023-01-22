# terrform block
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=3.0.0"
    }
    random = {
      soursource = "hashicorp/random"
      versionversion = "3.4.3"
    }
  }
}

# provider block
provider "azurerm" {
  features {}
}