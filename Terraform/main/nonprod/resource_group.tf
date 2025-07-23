module "resource_group" {
   source                  ="../../modules/azure_resource_group"
   name                    = "rg-${var.resource_name}-${var.resource_namespace}"
   #defaults to centralus
   location                = var.location
   tags                    = var.tags
}
