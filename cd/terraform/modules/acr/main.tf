resource "azurerm_container_registry" "acr" {
  name                = module.acr_name
  resource_group_name = module.resource_group.name
  location            =module. var.location
  sku                 = "Basic"
  admin_enabled       = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}