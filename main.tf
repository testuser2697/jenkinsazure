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
  subscription_id = "163d9cbc-483f-476a-b0aa-fdf68db176ca"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-sa-245928"
    storage_account_name = "jenkinsstate245928"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-245928-test-2"
  location = "westeurope"
}
