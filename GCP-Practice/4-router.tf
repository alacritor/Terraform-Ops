# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "aperture-router-oregon" {
#   name    = "aperture-router-oregon"
#   region  = "us-west1"
#   network = google_compute_network.aperture-vpc.id
# }

resource "google_compute_router" "aperture-router-oregon-prod" {
  name    = "aperture-router-oregon-prod"
  region  = "us-west1"
  network = google_compute_network.aperture-vpc-prod.id
}

# resource "google_compute_router" "aperture-router-tokyo" {
#   name    = "aperture-router-tokyo"
#   region  = "asia-northeast1"
#   network = google_compute_network.aperture-vpc.id
# }

# resource "google_compute_router" "aperture-router-tokyo-prod" {
#   name    = "aperture-router-tokyo-prod"
#   region  = "asia-northeast1"
#   network = google_compute_network.aperture-vpc-prod.id
# }

# resource "google_compute_router" "aperture-router-london" {
#   name    = "aperture-router-london"
#   region  = "europe-west2"
#   network = google_compute_network.aperture-vpc.id
# }

# resource "google_compute_router" "aperture-router-london-prod" {
#   name    = "aperture-router-london-prod"
#   region  = "europe-west2"
#   network = google_compute_network.aperture-vpc-prod.id
# }

# resource "google_compute_router" "aperture-router-paris" {
#   name    = "aperture-router-paris"
#   region  = "europe-west9"
#   network = google_compute_network.aperture-vpc.id
# }

# resource "google_compute_router" "aperture-router-paris-prod" {
#   name    = "aperture-router-paris-prod"
#   region  = "europe-west9"
#   network = google_compute_network.aperture-vpc-prod.id
# }

# resource "google_compute_router" "aperture-router-ocasio" {
#   name    = "aperture-router-ocasio"
#   region  = "southamerica-east1"
#   network = google_compute_network.aperture-vpc.id
# }

# resource "google_compute_router" "aperture-router-ocasio-prod" {
#   name    = "aperture-router-ocasio-prod"
#   region  = "southamerica-east1"
#   network = google_compute_network.aperture-vpc-prod.id
# }