terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.103.1"
    }
  }
}

provider "azurerm" {
  #   Configuration options
    
  features {}
  client_id       = "XXXX"
  client_secret   = "!!!!!"
  subscription_id = "TTTTTT"
  tenant_id       = "JJJJJJ"
}


