variable "name" {

}

variable "resource_group_name" {

}

variable "location" {

}

variable "version" {

}

variable "delegated_subnet_id" {
  default = false
}

variable "private_dns_zone_id" {

}

variable "public_network_access_enabled" {

}

variable "backup_retention_days" {

}

variable "administrator_login" {

}

variable "administrator_password" {

}

variable "zone" {

}

variable "active_directory_auth_enabled" {
  default = true
}

variable "password_auth_enabled" {
  default = false
}

variable "tenant_id" {

}

variable "storage_mb" {
  type = number
}

variable "storage_tier" {

}

variable "sku_name" {

}

variable "environment" {

}

variable "high_availability" {

}


# varibles for database

variable "server_id" {

}

variable "collation" {
  default = "en_US.utf8"
}

variable "charset" {
  default = "UTF8"
}


# database settings

variable "settings_name" {
  description = "needs to be a valid name such as 'azure.extensions"
}

variable "value" {
  description = "a comma separated list of configuration values"
}