# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "terraformstate-aperturesci"
    prefix      = "terraform/state"
    credentials = "euphoric-axon-453500-h6-cc9c54aaecf8.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}