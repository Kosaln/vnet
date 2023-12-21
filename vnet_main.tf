data "azurerm_resource_group" "tf_rg" {
  name = "terraform_project-GB-NP-RG"
}

resource "azurerm_virtual_network" "tf_vnet" {
  name                = "tf-appgtw-network"
  address_space       = ["10.2.1.0/24"]
  location            = "${data.azurerm_resource_group.tf_rg.location}"
  resource_group_name = "${data.azurerm_resource_group.tf_rg.name}"
}

resource "azurerm_subnet" "tf_subnet" {
  name                 = "frontend"
  resource_group_name  = "${data.azurerm_resource_group.tf_rg.name}"
  virtual_network_name = azurerm_virtual_network.tf_vnet.name
  address_prefixes     = ["10.2.1.0/26"]
}