
module "function_app" {
  source                = "./../../modules/resource_group/"
  location          = var.location
  resource_group_name     = var.resource_group_name
}
