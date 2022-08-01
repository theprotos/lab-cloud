resource "azurerm_resource_group" "this" {
  #count = 2
  count = "${length(var.rg_name)}"
  #name = "${var.resource_group_name}-${count.index}"
  name = "${element(var.rg_name, count.index)}"

  location = var.location

  tags = {
    environment = "Production"
  }
}

resource "azurerm_resource_group" "test1" {
  location = "${azurerm_resource_group.this.0.location}"
  name = "test1"
}

resource "azurerm_resource_group" "test2" {
  location = "${var.location}"
  name = "test3"

  depends_on = ["azurerm_resource_group.test1"]
}
