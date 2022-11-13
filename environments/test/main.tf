
module "resource_group" {
  source                = "./../../modules/resource_group/"
  location          = var.location
  resource_group_name     = var.resource_group_name
}
module "key_vault" {
  source                = "./../../modules/key_vault/"
  keyvault_name          = var.keyvault_name
  tenant_id     = var.tenant_id
  object_id=var.object_id
  location = var.location
  resource_group_name = var.resource_group_name
  depends_on   = [module.resource_group]
}
