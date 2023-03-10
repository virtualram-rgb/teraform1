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

# subnet
resource "azurerm_subnet" "myvnetsubnet" {
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.my_rg.name
  name = "websubnet"
  address_prefixes = [ "192.168.0.0/24" ]
}

resource "azurerm_subnet" "myvnetsubnet" {
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.my_rg.name
  name = "appsubnet"
  address_prefixes = [ "192.168.1.0/24" ]
}