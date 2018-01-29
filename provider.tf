provider "google" {
  credentials = "${file("terraform-demo-project.json")}"
  project     = "demo-project"
  region      = "europe-west3"
}