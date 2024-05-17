provider "azurerm" {
  use_oidc            = var.use_oidc
  storage_use_azuread = true
  features {}
}
