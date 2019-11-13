resource "azurerm_virtual_network" "this" {
  address_space = ["10.0.0.0/16"]
  location = "${var.location}"
  name = "virtual-network-demo"
  resource_group_name = "${azurerm_resource_group.this.name}"

  subnet {
    address_prefix = "10.0.1.0/24"
    name = "subnet1"
  }

  tags={
    environment = "Production"
  }
}
