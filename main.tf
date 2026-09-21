# -----------------------------
# RESOURCE GROUP
# -----------------------------

resource "azurerm_resource_group" "main" {

  # Result:
  # rg-tf-foundations-dev

  name = "rg-${var.project_name}-${var.environment}"

  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = var.project_name
  }
}

# -----------------------------
# VIRTUAL NETWORK
# -----------------------------

resource "azurerm_virtual_network" "main" {

  name = "vnet-${var.project_name}-${var.environment}"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  address_space = var.vnet_address_space

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# -----------------------------
# SUBNET
# -----------------------------

resource "azurerm_subnet" "main" {

  name = "snet-app"

  resource_group_name = azurerm_resource_group.main.name

  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = var.subnet_address_prefixes
}

# -----------------------------
# NETWORK SECURITY GROUP
# -----------------------------

resource "azurerm_network_security_group" "main" {

  name = "nsg-${var.project_name}-${var.environment}"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_subnet_network_security_group_association" "main" {

  subnet_id = azurerm_subnet.main.id

  network_security_group_id = azurerm_network_security_group.main.id
}