variable "name" {

}

variable "resource_group_name" {

}

variable "virtual_network_name" {

}

variable "remote_virtual_network_id" {

}

variable "allow_gateway_transit" {

}

variable "use_remote_gateways" {

}

variable "allow_virtual_network_access" {
  description = "can traffic from the local vnet reach the remote vnet"
  default     = true
}

variable "allow_forwarded_traffic" {

}




