resource "azurerm_subnet" "example" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtula_network_name = var.virtual_network_name
  service_endpoints = var.service_endpoints
  address_prefixes     = var.address_prefixes
  private_endpoint_network_policies_enabled = var.private_endpoint_network_policies_enabled

  dynamic "delegation" {
    for_each = var.subnet_delegation
    content {
      name = delegation.key
      dynamic "service_delegation" {
        for_each = toset(delegation.value)
        content{
          name = service_delegation.value.name
          actions = service_delegation.value.actions
          }
        }
      }
     }
    }
   resource "azurerm_subnet_network_security_group_association" "subnet"{
     subnet_id = azurerm_subnet.subnet.id
     network_security_group_id = var.network_security_group_id
     }
     
          
        

    
