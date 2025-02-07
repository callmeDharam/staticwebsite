module "static_website" {
  source              = "./modules/storage"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  storage_account_name = var.storage_account_name
}
