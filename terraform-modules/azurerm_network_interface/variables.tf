variable "name" {

}

variable "location" {

}

variable "resource_group_name" {

}

variable "ip_forwarding_enabled" {
  description = "allow nic to forward traffic - used for routing"
  default     = false
}

variable "accelerated_networking_enabled" {
  default = false
}
variable "subnet_id" {

}

variable "private_ip_address_allocation" {
  description = "static or dynamic assignment"
  default     = "Dynamic"
}