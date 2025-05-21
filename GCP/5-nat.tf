# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "aperture-nat-oregon" {
  name   = "aperture-nat-oregon"
  router = google_compute_router.aperture-router-oregon.name
  region = "us-west1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.aperture-hq.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.aperture-nat-oregon.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "aperture-nat-oregon" {
  name         = "aperture-nat-oregon"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = "us-west1"

  # depends_on = [google_project_service.compute]
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "aperture-nat-tokyo" {
  name   = "aperture-nat-tokyo"
  router = google_compute_router.aperture-router-tokyo.name
  region = "asia-northeast1"


  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyo1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.aperture-nat-tokyo.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "aperture-nat-tokyo" {
  name         = "aperture-nat-tokyo"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = "asia-northeast1"

  # depends_on = [google_project_service.compute]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "aperture-nat-london" {
  name   = "aperture-nat-london"
  router = google_compute_router.aperture-router-london.name
  region = "europe-west2"


  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.london1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.aperture-nat-london.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "aperture-nat-london" {
  name         = "aperture-nat-london"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = "europe-west2"

  # depends_on = [google_project_service.compute]
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "aperture-nat-ocasio" {
  name   = "aperture-nat-ocasio"
  router = google_compute_router.aperture-router-ocasio.name
  region = "southamerica-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.ocasio1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.aperture-nat-ocasio.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "aperture-nat-ocasio" {
  name         = "aperture-nat-ocasio"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = "southamerica-east1"

  # depends_on = [google_project_service.compute]
}
