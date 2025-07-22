variable "name"{
  type = string 
}
variable "resource_group_name"{
  type = string
}
variable"virtual_netowrk_name"{
  type = string
}

variable "address_prifixes"{
   type = list
}
variable "service_endpoints"{
  type = list
  default= null
}

variable "private_endpoint_network_policies_enabled"{
  default = null
}

variable "network_security_group_id"{
  default = null
}

variable "network_security_group_name"{
  default = null
}

variable "network_security_group_location"{
  default = null
}

variable subnet_delegation"{
 description = "subnet delegation configuration."
type = map(list(object({
  name = string
  actions = list(String)
})))
default = {}
nullable = false
}
