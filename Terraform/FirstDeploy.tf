resource "azurerm_resource_group" "NewREG" {
    name = "KKKS"
    location = "east us"
}
resource "azurerm_virtual_network" "Vnet1" {
  name = "KKKS"
  location = azurerm_resource_group.NewREG.location
  resource_group_name = azurerm_resource_group.NewREG.name
  address_space = [ "10.0.0.0/16" ]
  }
resource "azurerm_subnet" "subnet1" {
    name = "default"
    resource_group_name = azurerm_resource_group.NewREG.name
    virtual_network_name = azurerm_virtual_network.Vnet1.name
    address_prefix = "10.0.1.0/24"
  
}