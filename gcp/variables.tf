variable "project" {
  description = "Project"
  default = "read-from-tfvars"
}

variable "creds" {
  description = "Service account key"
  default = "read_from_file.json"
}