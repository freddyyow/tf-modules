resource "azurerm_kubernetes_cluster_node_pool" "pool" {
  for_each = var.node_pool_settings

  name                  = each.key
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = each.value.vm_size
  auto_scaling_enabled  = each.value.auto_scaling_enabled
  node_count            = each.value.node_count
  min_count             = each.value.min_count
  max_count             = each.value.max_count
  priority              = each.value.priority
  vnet_subnet_id        = var.vnet_subnet_id
  os_type               = each.value.os_type
  os_sku                = each.value.os_sku
  node_taints           = each.value.node_taints

  dynamic "linux_os_config" {
    for_each = var.linux_os_config

    content {
      swap_file_size_mb = linux_os_config.value.swap_file_size_mb


      dynamic "sysctl_config" {
        for_each = var.sysctl_config

        content {
          vm_max_map_count = sysctl_config.value.vm_max_map_count
          vm_swappiness    = sysctl_config.value.vm_swappiness
        }
      }
    }
  }
  tags = merge(var.tags, local.common_tags)
}






# example of using the module
# resource "azurerm_kubernetes_cluster_node_pool" "pool" {
#   #for_each              = var.node_pool
#   name                  = each.key
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
#   vm_size               = var.env == "prod" ? var.node_pool_vm_size : "Standard_DS2_v2"
#   auto_scaling_enabled  = true
#   node_count            = each.value.node_count
#   min_count             = each.value.min_count
#   max_count             = each.value.max_count
#   priority = var.priority

#   tags = {
#     Environment = "Production"
#   }
# }