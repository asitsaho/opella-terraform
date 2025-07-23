module "subnet"{
  source      = "../../modules/azure_subnet"
  name = "sn-${var.resource_name}-${var.resource_namespace}"
  resource_group_name = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes = var.subnetaddress
  network_security_group_name = module.network_security_group.name
  network_security_group_id = module.network_security_group.id
  network_security_group_location = module.network_security_group.location
  private_endpoint_network_policies_enabled = var.private_endpoint_network_policies_enabled
  depends_on = [module.resource_group.name , module.virtual_network.name, module.network_Security_group.name,
  module.network_security_group.id ]
  service_endpoints  = var.serviceendpoints
  }
