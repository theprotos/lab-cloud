resource "azurerm_resource_group" "backend" {
  location = "${var.location}"
  name = "${var.rg_name}"

  tags = {
    environment = "${var.tags}"
  }
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.saccount_name}"
  resource_group_name      = "${azurerm_resource_group.backend.name}"
  location                 = "${azurerm_resource_group.backend.location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "${var.tags}"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "state"
  storage_account_name  = "${azurerm_storage_account.storage_account.name}"
  container_access_type = "private"

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    environment = "${var.tags}"
  }

}
