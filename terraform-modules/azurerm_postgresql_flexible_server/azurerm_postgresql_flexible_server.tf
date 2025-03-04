resource "azurerm_postgresql_flexible_server" "postgresql_flexible_server" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.version
  delegated_subnet_id           = var.delegated_subnet_id
  private_dns_zone_id           = var.delegated_subnet_id
  public_network_access_enabled = var.public_network_access_enabled
  backup_retention_days         = var.backup_retention_days
  #administrator_login           = var.administrator_login
  #administrator_password        = var.administrator_password
  zone = var.zone

  authentication {
    active_directory_auth_enabled = var.active_directory_auth_enabled
    password_auth_enabled         = var.password_auth_enabled
    tenant_id                     = var.tenant_id

  }

  storage_mb   = var.storage_mb
  storage_tier = var.storage_tier

  sku_name = var.sku_name

  dynamic "high_availability" {
    for_each = var.high_availability
    content {
      mode = high_availability.value["high_availability"]
    }
  }
  # depends_on = [azurerm_private_dns_zone_virtual_network_link.example]

}