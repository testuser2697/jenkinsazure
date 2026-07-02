terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "28675585-9c0c-4857-9cb3-bacf35dfe8fc"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-130526-1"
    storage_account_name = "jenkinsstatemcg123"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG-060726-1-test-1"
  location = "westeurope"
}
