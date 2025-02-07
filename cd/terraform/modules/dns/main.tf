resource "azurerm_dns_zone" "dns_zone" {
  name                = module.var.domain_name
  resource_group_name = module.var.resource_group_name
}

resource "azurerm_dns_a_record" "dns_a_record" {
  name                = "@"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = module.resource_group.name
  ttl                 = 300
  records             = [azurerm_kubernetes_cluster.aks.kube_config.0.host]
}
