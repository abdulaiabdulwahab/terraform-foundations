provider "azurerm" {

  # Required configuration block.
  features {}

  # AzureRM 4.x requires the subscription
  # in which Terraform will operate.
  subscription_id = var.subscription_id
}