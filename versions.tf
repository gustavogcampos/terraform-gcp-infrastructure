terraform {
  required_version = ">= 0.18"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.14.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}
