variable "environment_name"{
  type = string
}

variable "resource_name"{
  type = string
}

variable "resource_namespace"{
  type = string
}
variable "location"{
  type = string
}
variable "tags"{
  type = map
}

variable "vnet_address_space" {
  type = list
}

variable "subnetaddress" {
  type = list
  default = ["10.0.1.0/24"]
}

variable "serviceendpoints"{
 type = list
}
variable "private_endpoint_network_policies_enabled"{
  description = "private end point link polciy "
}

variable "allow_ips"{
 type = list
}

variable "storage_account_sku_name" {
  type = string
  default = "Standard_GRS"
}

