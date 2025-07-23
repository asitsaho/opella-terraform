tags     ={"createdfrom" = "terraform" , "environment" = "nonprod" }

environment_name  = "dev"
resource_name = "opella"
resource_namespace  = "nonprod"
location = "eastus2"
vnet_address_space  = ["10.55.0.0/22"]
subnetaddress   = ["10.55.0.0/25"]
servicendpoints  = ["Microsoft.Keyvault", "Microsoft.Storage", "Microsoft.ContainerRegistry"]
private_endpoint_network_policies_enabled = true
allow_ips = [
"168.183.0.0/16"
]


