resource "azurerm_network_security_group" "netowrk_security_group"{
  name = var.name
  resource_group_name = var.resource_group_name
  location = var.location
  tags = var.tags
  }

resource "azurerm_network_security_rule" "allow_opellla_ips"{
    name = "AllowOpellaHttpsInbound"
    resource_group_name = var.resource_group_name
    network_security_group_name = azurerm_network_security_group.network_security_group.name
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_ranges = ["443","80"]

    source_address_prefixes = [
      "168.183.0.0/16"
      ]
destination_address_prefix = "*" 
  access ="Allow"
  priority = "!20"
  direction ="Inbound"
  }
