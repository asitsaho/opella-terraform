output "id" {
 value  =  "${azurerm_network_security_group.network_security_group.id}"
 description = "The network security Group ID."
}

output "name" {
  value = "${azurerm_network_security_group.network_security_group.name}"
  description = "The network security Group name "
}

output "location" {
  value = "${azurerm_network_security_group.network_security_group.location}"
  description = "The network security Group location"
}
