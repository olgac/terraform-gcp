resource "google_compute_instance" "default" {
  name         = "manager"
  machine_type = "g1-small"
  zone         = "europe-west3-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = "echo hi > /tmp/test.txt"

  service_account {
      email = "terraform@demo-project.iam.gserviceaccount.com"
      scopes = []
  }
}