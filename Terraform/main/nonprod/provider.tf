terraform {
  backend "azurerm" {}
   required_providers {
     azurerm = {
       source = "hashicorp/azurerm"
       version ="3.107.0"
       }
      }
    required_version = ">= 1.2.0"
    }

 # configure
 provider "azurerm" {
   features {}
   }
