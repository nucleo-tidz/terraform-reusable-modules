
module "function_app" {
  source                = "./../../modules/resource_group/"
  location          = var.location
  resource_group_name     = var.resource_group_name
}
module "function_app" {
  source                = "./../../modules/key_vault/"
  keyvault_name          = var.keyvault_name
  tenant_id     = var.tenant_id
  object_id=var.object_id
}
