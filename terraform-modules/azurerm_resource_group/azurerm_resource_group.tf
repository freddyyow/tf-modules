resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
  tags     = var.tags

  lifecycle {
    postcondition {
      condition     = length(self.tags) > 0 && contains(keys(self.tags), "Environment")
      error_message = "The resource group ${self.name} does not have the Environment tag set."
    }
  }
}

