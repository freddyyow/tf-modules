variable "azure_linux_virtual_machine_name" {

}

variable "resource_group_name" {

}

variable "location" {

}

variable "size" {

}

variable "admin_username" {

}

variable "identity_type" {
  description = "SystemAssigned, UserAssigned"
  default     = "SystemAssigned"
}

variable "public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "azurerm_virtual_machine_extension_name" {

}

variable "virtual_machine_id" {

}

variable "network_interface_ids" {
  description = "ID's of all NIC's attached to the VM"
  type        = list(any)
}

variable "publisher" {
  description = "publisher of the extension"
  default     = "Microsoft.Azure.Extensions"
}

variable "type" {
  # az vm extension image list --location canadacentral -o table to see extension names
  description = "name of the extension"
}

variable "type_handler_version" {
  description = "handler version"
  default     = "2.0"
}

variable "tags" {

}