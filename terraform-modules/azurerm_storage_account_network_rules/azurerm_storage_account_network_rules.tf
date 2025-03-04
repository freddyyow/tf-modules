resource "azurerm_storage_account_network_rules" "storage_account_network_rules" {
  storage_account_id = var.storage_account_id
  default_action     = var.default_action
  #  ip_rules                   = var.ip_rules
  virtual_network_subnet_ids = var.virtual_network_subnet_ids

  private_link_access {
    endpoint_resource_id = var.endpoint_resource_id
  }

}
