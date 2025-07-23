module "network_security_group"{
  source    = "../../modules/azure_network_security_group"
  name = "sg-${module.resource_group.name}"
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  tags = var.tags
  depends_on = [module.resource_group.name , module.resource_group.location]
}
