terraform {

  # Minimum Terraform CLI version.
  required_version = ">= 1.6.0"

  required_providers {

    # Terraform downloads this provider from
    # registry.terraform.io/hashicorp/azurerm.
    azurerm = {
      source = "hashicorp/azurerm"

      # Allow AzureRM 4.x releases but not an
      # automatic major upgrade to 5.x.
      version = "~> 4.0"
    }
  }
}