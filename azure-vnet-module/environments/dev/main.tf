provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "rg-dev"
  location = "East US"
}

module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "dev-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.main.name
  subnets = [
    {
      name           = "subnet1"
      address_prefix = "10.0.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
    }
  ]
}

resource "azurerm_storage_account" "dev" {
  name                     = "devstorageacct123"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "dev" {
  name                  = "devcontainer"
  storage_account_name  = azurerm_storage_account.dev.name
  container_access_type = "private"
}