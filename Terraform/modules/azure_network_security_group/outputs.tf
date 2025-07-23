output "id"{
 value  = "${azurerm_network_security_group.network_security_group.id}"
 description = "The network securoty Group ID."
}

output "name"{
  value = "${azurerm_network_security_group.network_security_group.name}"
}

output "location"{
  value = "${azurerm_network_security_group.network_security_group.location}"
}
