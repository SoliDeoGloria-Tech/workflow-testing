terraform {
backend "azurerm" {
    resource_group_name  = "github-actions-rg"
    storage_account_name = "demostatestore"
    container_name       = "testing"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}
