terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-resources"  
    storage_account_name = "demoterraformaks"                     
    container_name       = "test-tfstate"                      
    key                  = "prod.terraform.tfstate"       
  }
}

