# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "aperture-router-oregon" {
  name    = "aperture-router-oregon"
  region  = "us-west1"
  network = google_compute_network.aperture-vpc.id
}

resource "google_compute_router" "aperture-router-tokyo" {
  name    = "aperture-router-tokyo"
  region  = "asia-northeast1"
  network = google_compute_network.aperture-vpc.id
}

resource "google_compute_router" "aperture-router-london" {
  name    = "aperture-router-london"
  region  = "europe-west2"
  network = google_compute_network.aperture-vpc.id
}

resource "google_compute_router" "aperture-router-paris" {
  name    = "aperture-router-paris"
  region  = "europe-west9"
  network = google_compute_network.aperture-vpc.id
}