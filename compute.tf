resource "google_compute_instance" "manager" {
  name         = "manager"
  machine_type = "g1-small"
  zone         = "europe-west3-a"
  tags         = ["swarm"]

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

resource "google_compute_instance" "worker1" {
  name         = "worker1"
  machine_type = "g1-small"
  zone         = "europe-west3-a"
  tags         = ["swarm"]

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

resource "google_compute_instance" "worker2" {
  name         = "worker2"
  machine_type = "g1-small"
  zone         = "europe-west3-a"
  tags         = ["swarm"]

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

resource "google_compute_instance" "worker3" {
  name         = "worker3"
  machine_type = "g1-small"
  zone         = "europe-west3-a"
  tags         = ["swarm"]

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