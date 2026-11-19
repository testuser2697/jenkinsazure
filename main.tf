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
  subscription_id = "7f1c734d-bd3a-4224-84a5-fea5837caa5d"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-sa-7562jy"
    storage_account_name = "jenkinsstate7562jy"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-sa-7562j-test-3"
  location = "westeurope"
}
