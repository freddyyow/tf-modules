resource "azurerm_network_interface" "network_interface" {
  name                           = var.name
  location                       = var.location
  resource_group_name            = var.resource_group_name
  ip_forwarding_enabled          = var.ip_forwarding_enabled
  accelerated_networking_enabled = var.accelerated_networking_enabled

  ip_configuration {
    name                          = "${var.name}-nic"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}