terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-tfs"
    storage_account_name = "st1state2578"
    container_name       = "tfstate"
    key                  = "drp.terraform.tfstate"
  }
}
