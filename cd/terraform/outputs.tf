output "static_website_url" {
  value = module.static_website.static_website_url
}

output "aks_cluster_name" {
  value = module.aks_cluster.aks_cluster_name
}

output "custom_domain_url" {
  value = module.dns.custom_domain_url
}


output "custom_domain_url" {
  value = azurerm_dns_zone.dns_zone.name
}