# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
# For Oregon
resource "google_compute_subnetwork" "aperture-hq" {
  name                     = "aperture-hq"
  ip_cidr_range            = "10.160.100.0/24"
  region                   = "us-west1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "aperture-hq-prod" {
  name                     = "aperture-hq-prod"
  ip_cidr_range            = "10.165.110.0/24"
  region                   = "us-west1"
  network                  = google_compute_network.aperture-vpc-prod.id
  private_ip_google_access = true
}
# For Tokyo
resource "google_compute_subnetwork" "tokyo1" {
  name                     = "tokyo1"
  ip_cidr_range            = "10.160.10.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo1-prod" {
  name                     = "tokyo1-prod"
  ip_cidr_range            = "10.165.10.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.aperture-vpc-prod.id
  private_ip_google_access = true
}
# For London
resource "google_compute_subnetwork" "london1" {
  name                     = "london1"
  ip_cidr_range            = "10.160.20.0/24"
  region                   = "europe-west2"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "london1-prod" {
  name                     = "london1"
  ip_cidr_range            = "10.165.20.0/24"
  region                   = "europe-west2"
  network                  = google_compute_network.aperture-vpc-prod.id
  private_ip_google_access = true
}
# For Paris
resource "google_compute_subnetwork" "paris1" {
  name                     = "paris1"
  ip_cidr_range            = "10.160.30.0/24"
  region                   = "europe-west9"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "paris1-prod" {
  name                     = "paris1-prod"
  ip_cidr_range            = "10.165.30.0/24"
  region                   = "europe-west9"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}
# For Sao Paulo
resource "google_compute_subnetwork" "osasco1" {
  name                     = "osasco1"
  ip_cidr_range            = "10.160.40.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.aperture-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "osasco1-prod" {
  name                     = "osasco1-prod"
  ip_cidr_range            = "10.165.40.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.aperture-vpc-prod.id
  private_ip_google_access = true
}


