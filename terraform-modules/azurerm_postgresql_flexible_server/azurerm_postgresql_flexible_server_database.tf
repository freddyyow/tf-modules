resource "azurerm_postgresql_flexible_server_database" "postgresql_flexible_server_database" {
  name      = "${var.name}-psql"
  server_id = var.server_id
  collation = var.collation
  charset   = var.charset

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}