provider "azurerm" {
subscription_id = "0d3a3a2b-2635-4743-84b7-aaa5e69fe5ba"
client_id = "${var.azure_client_id}"
client_secret = "${var.azure_client_secret}"
tenant_id = "0ae51e19-07c8-4e4b-bb6d-648ee58410f4"
}
resource "azurerm_resource_group" "cicd" {
  name     = "cicd02"
  location = "southeastasia"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_resource_group" "cicd03" {
  name     = "cicd03"
  location = "southeastasia"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_resource_group" "cicd04" {
  name     = "cicd03"
  location = "southeastasia"

  tags = {
    environment = "Production"
  }
}
resource "azurerm_resource_group" "cicd05" {
  name     = "cicd05"
  location = "southeastasia"

  tags = {
    environment = "Production"
  }
}
