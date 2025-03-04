variable "name" {

}

variable "location" {

}

variable "resource_group_name" {

}

variable "storage_account_type" {
  default = "Standard_LRS"
}

variable "create_option" {
  default = "Empty"
}

variable "disk_size_gb" {

}

variable "managed_disk_id" {

}

variable "virtual_machine_id" {

}

variable "lun" {
  default = "10"
}

variable "caching" {
  default = "ReadWrite"
}