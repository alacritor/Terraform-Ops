# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones
# # Datasource: Get a list of Google Compute zones that are UP in a region
# data "google_compute_zones" "available" {
#   status = "UP"
#   #region = "" (optional if provider default is set)
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager
# # Resource: Managed Instance Group
# resource "google_compute_region_instance_group_manager" "aperture-mig" {
#   depends_on         = [google_compute_router_nat.aperture-nat-oregon]
#   name               = "aperture-mig"
#   base_instance_name = "aperture-app"
#   region             = "us-west1" # Change this to your desired region
#   #region = "" (optional if provider default is set)

#   # Compute zones to be used for VM creation
#   distribution_policy_zones = data.google_compute_zones.available.names
#   # If you want to specify zones manually, you can use:
#   # distribution_policy_zones = 

#   # Instance Template
#   version {
#     instance_template = google_compute_region_instance_template.aperture-compute-template-hq.id
#   }

#   # Named Port
#   named_port {
#     name = "webserver"
#     port = 80
#   }

#   # Autohealing Config
#   auto_healing_policies {
#     health_check      = google_compute_region_health_check.aperture-health-check.id
#     initial_delay_sec = 300
#   }
# }

resource "google_compute_address" "aperture-vm-ip" {
  name         = "aperture-vm-ip"
  region       =  "us-west1"
  address_type = "EXTERNAL"
}

resource "google_compute_region_instance_group_manager" "aperture-mig" {
  name     = "aperture-mig"
  region     = "us-west1"
  version {
    instance_template = google_compute_region_instance_template.aperture-compute-template-hq.id
    name              = "aperture-mig"
  }
  base_instance_name = "aperture-app"
  target_size        = 2
    named_port {
    name = "http"
    port = 80
  }
}