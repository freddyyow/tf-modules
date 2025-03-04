resource "azurerm_virtual_network" "virtual_network" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  #  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  #  Subnets created using the subnet module 
  tags = var.tags
}