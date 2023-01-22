# terraform resource block
resource "azurerm_resource_group" "my_rg" {
  name = "myresourcegroup"
  location = "East US"
}

# virtual network
resource "azurerm_virtual_network" "myvnet" {
  resource_group_name = azurerm_resource_group.my_rg.name
  location = azurerm_resource_group.my_rg.location
  address_space = [ "192.168.0.0/16" ]
}