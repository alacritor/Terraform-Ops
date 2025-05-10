# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "aperture-hq" {
  name                     = "aperture-hq"
  ip_cidr_range            = "10.160.100.0/24"
  region                   = "us-west1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo1" {
  name                     = "tokyo1"
  ip_cidr_range            = "10.160.10.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "london1" {
  name                     = "london1"
  ip_cidr_range            = "10.160.20.0/24"
  region                   = "europe-west2"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "paris1" {
  name                     = "paris1"
  ip_cidr_range            = "10.160.30.0/24"
  region                   = "europe-west9"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "osasco1" {
  name                     = "osasco1"
  ip_cidr_range            = "10.160.40.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}


