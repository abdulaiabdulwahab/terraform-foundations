output "resource_group_name" {
  description = "Resource group created by Terraform"
  value       = azurerm_resource_group.main.name
}

output "vnet_name" {
  description = "VNet created by Terraform"
  value       = azurerm_virtual_network.main.name
}

output "vnet_id" {
  description = "Azure resource ID of the VNet"
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "Azure resource ID of the subnet"
  value       = azurerm_subnet.main.id
}