variable "name" {
  description = "name"
}

variable "resource_group_name" {
  description = "resource group name"
}

variable "virtual_network_name" {
  description = "Vnet name"
}

variable "address_prefixes" {
  description = "subnet prefix based on Vnet subnet attaches to"
  type        = list()
}