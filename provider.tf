provider "google" {
  project     = "project-name"
  region      = "us-central1"
  credentials = file("../credential.json")
}

provider "random" {
  # Configuration options
}
