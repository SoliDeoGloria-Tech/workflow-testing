resource "azurerm_subnet" "deprecated" {
  name                                      = "deprecated"
  resource_group_name                       = azurerm_resource_group.this.name
  virtual_network_name                      = azurerm_virtual_network.this.name
  address_prefixes                          = [cidrsubnet(azurerm_virtual_network.this.address_space[0], 8, 0)]
  private_endpoint_network_policies_enabled = true
}

resource "azurerm_virtual_network" "this" {
  name                = "this-test-vnet"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_resource_group" "this" {
  name     = "this-test-rg"
  location = "East US"
}
