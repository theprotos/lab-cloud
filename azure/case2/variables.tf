variable "resource_group_name" {
  default = "myresource"
}

variable "location" {
  default = "West US"
}

variable "rg_name" {
  type = list(string)
  default = ["demo1", "demo2"]
}
