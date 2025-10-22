terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-tfs"
    storage_account_name = "st1state2578"
    container_name       = "tfstate"
    key                  = "drp.terraform.tfstate"
    subscription_id      = "6c475893-af6c-42c4-b8a8-0afb5cb79259"
    tenant_id            = "211e6e3f-316e-4b8b-9b2c-a856bfa086ca"
    use_azuread_auth     = true
    use_oidc             = true   # if you use OIDC with GitHub Actions
  }
}
