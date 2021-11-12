# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "rg" {
  count = var.create_rg ? 1 : 0

  name     = var.rg_name
  location = var.rg_location
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_virtual_network" "net" {
  count = var.create_net ? 1 : 0

  name                = var.net_name
  address_space       = var.net_addr_space
  location            = var.rg_location
  resource_group_name = var.rg_name

  depends_on = [azurerm_resource_group.rg]
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subn
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.net_name
  address_prefixes     = var.subnet_addr_space

  depends_on = [azurerm_virtual_network.net]
}