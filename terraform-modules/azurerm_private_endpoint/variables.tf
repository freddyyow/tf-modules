variable "name" {

}

variable "location" {

}

variable "resource_group_name" {

}

variable "subnet_id" {

}

variable "private_service_connection_name" {

}

variable "private_connection_resource_id" {

}

variable "subresource_names" {
  description = "sub-resource type of the parent resource"
  type        = list()
}

variable "is_manual_connection" {
  description = "is it a remote resource you don't own? Set this to true"
  default     = false
}

variable "private_dns_zone_group_name" {

}

variable "private_dns_zone_ids" {
  description = "List of private DNS zone ID's"
  type        = list()
}