resource "azurerm_linux_virtual_machine" "linux_virtual_machine" {
  name                  = var.azure_linux_virtual_machine_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  network_interface_ids = var.network_interface_ids

  identity {
    type = var.identity_type
  }

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key)
    #public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    #offer     = "0001-com-ubuntu-server-jammy"
    #sku       = "22_04-lts"
    version = "latest"
  }

  tags = var.tags
}

resource "azurerm_virtual_machine_extension" "azurerm_virtual_machine_extension" {
  name                 = var.azurerm_virtual_machine_extension_name
  virtual_machine_id   = var.virtual_machine_id
  publisher            = var.publisher
  type                 = var.type
  type_handler_version = var.type_handler_version

  tags = var.tags
}