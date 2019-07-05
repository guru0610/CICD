resource "azurerm_resource_group" "main" {
  name     = "WCMSTEST"
  location = "Southeast Asia"

  tags {
    environment = "Production"
  }
}

