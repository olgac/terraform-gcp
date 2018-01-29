provider "google" {
  credentials = "${file("terraform-hepsiburada-demo.json")}"
  project     = "hepsiburada-demo"
  region      = "europe-west3"
}