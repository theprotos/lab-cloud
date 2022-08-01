terraform {
  backend "azurerm" {
    resource_group_name = "backend"
    storage_account_name = "storageaccountnamevlad"
    container_name = "state"
    key = "prod.terraform.tfstate"
    access_key = "vRzqMgyW4j2hLjjCcv7BHpfsj/GWBltl8RD+Wq/QM3KAdqAEtJanH6uFBK0CQPvHJfVGdhkbTTaZxozgaXz2KA=="
  }
}
