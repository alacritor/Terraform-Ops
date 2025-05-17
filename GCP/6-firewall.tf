# http://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

# Direct SSH Access for Aperture-Firewall
# For Aperture-VPC
resource "google_compute_firewall" "aperture-firewall" {
  name      = "aperture-firewall"
  network   = google_compute_network.aperture-vpc.name
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}



resource "google_compute_firewall" "allow-aperture-web-traffic" {
  name    = "allow-aperture-web-traffic"
  network = google_compute_network.aperture-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]

} 