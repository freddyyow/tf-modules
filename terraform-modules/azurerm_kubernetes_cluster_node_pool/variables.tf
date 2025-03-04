
variable "environment_map" {
  type        = map(string)
  description = "map of environments mapping to possible target environments"

  default = {
    "DEV"   = "dev",
    "UAT"   = "uat",
    "STAGE" = "staging"
    "QA"    = "qa"
    "PROD"  = "prod"
  }
}

variable "kubernetes_cluster_id" {

}

variable "linux_os_config" {
  type = list(object({
    swap_file_size_mb = optional(number)
  }))
}

variable "node_pool_settings" {
  type = map(object({
    node_count           = number
    min_count            = number
    max_count            = number
    auto_scaling_enabled = optional(bool, true)
    os_type              = optional(string, "Linux")
    priority             = optional(string, "Regular")
    os_sku               = optional(string, "Ubuntu")
    node_taints          = optional(list(string))
    vm_size              = optional(string, "Standard_DS2_v2")
  }))
  default     = {}
  description = "value"
}

variable "sysctl_config" {
  type = list(object({
    vm_max_map_count = optional(number)
    vm_swappiness    = optional(number)
  }))
}

variable "tags" {

}

variable "target_environment" {
  type = string

  validation {
    condition     = contains(["DEV", "UAT", "STAGE", "QA", "PROD"], var.target_environment)
    error_message = "Must be set as one of the following options ['DEV', 'UAT', 'STAGE', 'QA', 'PROD']"
  }
}

variable "vnet_subnet_id" {

}






