# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "terraformstate-aperturesci-alpha"
    prefix      = "terraform/state"
    credentials = "ivory-being-462318-m9-e77bb62751b0.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}