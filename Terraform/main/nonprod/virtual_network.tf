module virtual_network {
  source                  = "../../modules/azure_virtual_network"
  name                    = "vn-${var.resource_name}-${var.resource_namespace}"
  resource_group_name     = module.resource_group.name
  address_space           = var.vnet_address_space
  location                = module.resource_group.location
  tags                    = var.tags
    depends_on = [module.resource_group.name]
      } 
