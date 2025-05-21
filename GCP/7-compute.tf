
resource "google_compute_instance" "aperture-instance" {
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

  metadata_startup_script = file("./startup.sh")

} 