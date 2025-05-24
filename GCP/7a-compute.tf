
resource "google_compute_instance" "aperture-instance1" {
  name         = "aperture-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.aperture-vpc.name
    subnetwork = google_compute_subnetwork.aperture-hq.id
    access_config {
      // Ephemeral IP address
    }

  }

  metadata_startup_script = file("./startup1.sh")

} 

resource "google_compute_instance" "aperture-instance2" {
  name         = "aperture-instance2"
  machine_type = "e2-medium"
  zone         = "asia-northeast1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.aperture-vpc.name
    subnetwork = google_compute_subnetwork.tokyo1.id
    access_config {
      // Ephemeral IP address
    }

  }

  metadata_startup_script = file("./startup2.sh")

} 


resource "google_compute_instance" "aperture-instance3" {
  name         = "aperture-instance3"
  machine_type = "e2-medium"
  zone         = "europe-west2-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.aperture-vpc.name
    subnetwork = google_compute_subnetwork.london1.id
    access_config {
      // Ephemeral IP address
    }

  }

  metadata_startup_script = file("./startup3.sh")

} 


resource "google_compute_instance" "aperture-instance4" {
  name         = "aperture-instance4"
  machine_type = "e2-medium"
  zone         = "europe-west9-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.aperture-vpc.name
    subnetwork = google_compute_subnetwork.paris1.id
    access_config {
      // Ephemeral IP address
    }

  }

  metadata_startup_script = file("./startup4.sh")

}

resource "google_compute_instance" "aperture-instance5" {
  name         = "aperture-instance5"
  machine_type = "e2-medium"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.aperture-vpc.name
    subnetwork = google_compute_subnetwork.ocasio1.id
    access_config {
      // Ephemeral IP address
    }

  }

  metadata_startup_script = file("./startup5.sh")

}