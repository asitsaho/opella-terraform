provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "rg-prod"
  location = "East US"
}

module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "prod-vnet"
  address_space       = ["10.1.0.0/16"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.main.name
  subnets = [
    {
      name           = "subnet1"
      address_prefix = "10.1.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.1.2.0/24"
    }
  ]
}

resource "azurerm_storage_account" "prod" {
  name                     = "prodstorageacct123"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "prod" {
  name                  = "prodcontainer"
  storage_account_name  = azurerm_storage_account.prod.name
  container_access_type = "private"
}