terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=3.5.0"
    }
  }
}

provider "google" {

  credentials = file(var.creds)

  project = var.project
  region  = "us-central1"
  zone    = "us-central1-c"
}
