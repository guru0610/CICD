provider "azurerm" {
subscription_id = "0d3a3a2b-2635-4743-84b7-aaa5e69fe5ba"
client_id = "cb610643-2fb8-4844-a689-700758b46b9d"
client_secret = "b311d590-d8de-41f6-8859-1a7689c4171b"
tenant_id = "0ae51e19-07c8-4e4b-bb6d-648ee58410f4"
}
resource "azurerm_resource_group" "main" {
  name     = "WCMSTEST02"
  location = "Southeast Asia"
}
