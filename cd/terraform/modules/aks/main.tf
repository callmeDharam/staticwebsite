module "aks_cluster" {
  source              = "./modules/aks"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  aks_cluster_name    = var.aks_cluster_name
}