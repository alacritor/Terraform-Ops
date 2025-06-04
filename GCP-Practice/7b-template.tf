# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "aperture-compute-template-hq" {
  name         = "aperture-compute-template-hq"
  description  = "This template is used to create compute instances in the Aperture project."
  region       = "us-west1" # Specify the region for the template
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.aperture-hq-prod.id
    access_config {
      # Include this section to give the VM an external IP address
      nat_ip = google_compute_address.aperture-vm-ip.address
    }
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup1.sh")
}

# resource "google_compute_region_instance_template" "aperture-compute-template-tokyo" {
#   name         = "aperture-compute-template-tokyo"
#   description  = "This template is used to create compute instances in Tokyo for the Aperture project."
#   region       = "asia-northeast1"  # Specify the region for the template
#   machine_type = "e2-medium"

#   # Create a new disk from an image and set as boot disk
#   disk {
#     source_image = "debian-cloud/debian-12"
#     boot         = true
#   }

#   # Network Configurations 
#   network_interface {
#     subnetwork = google_compute_subnetwork.tokyo1.id
#     /*access_config {
#       # Include this section to give the VM an external IP address
#     } */
#   }

#   # Install Webserver using file() function
#   metadata_startup_script = file("./startup2.sh")
# }

# resource "google_compute_region_instance_template" "aperture-compute-template-london" {
#   name         = "aperture-compute-template-london"
#   description  = "This template is used to create compute instances in London for the Aperture project."
#   region       = "europe-west2"  # Specify the region for the template
#   machine_type = "e2-medium"

#   # Create a new disk from an image and set as boot disk
#   disk {
#     source_image = "debian-cloud/debian-12"
#     boot         = true
#   }

#   # Network Configurations 
#   network_interface {
#     subnetwork = google_compute_subnetwork.london1.id
#     /*access_config {
#       # Include this section to give the VM an external IP address
#     } */
#   }

#   # Install Webserver using file() function
#   metadata_startup_script = file("./startup3.sh")
# }

# resource "google_compute_region_instance_template" "aperture-compute-template-paris" {
#   name         = "aperture-compute-template-paris"
#   description  = "This template is used to create compute instances in Paris for the Aperture project."
#   region       = "europe-west9"  # Specify the region for the template
#   machine_type = "e2-medium"

#   # Create a new disk from an image and set as boot disk
#   disk {
#     source_image = "debian-cloud/debian-12"
#     boot         = true
#   }

#   # Network Configurations 
#   network_interface {
#     subnetwork = google_compute_subnetwork.paris1.id
#     /*access_config {
#       # Include this section to give the VM an external IP address
#     } */
#   }

#   # Install Webserver using file() function
#   metadata_startup_script = file("./startup4.sh")
# }

# resource "google_compute_region_instance_template" "aperture-compute-template-ocasio" {
#   name         = "aperture-compute-template-ocasio"
#   description  = "This template is used to create compute instances in Ocasio for the Aperture project."
#   region       = "southamerica-east1"  # Specify the region for the template
#   machine_type = "e2-medium"

#   # Create a new disk from an image and set as boot disk
#   disk {
#     source_image = "debian-cloud/debian-12"
#     boot         = true
#   }

#   # Network Configurations 
#   network_interface {
#     subnetwork = google_compute_subnetwork.ocasio1.id
#     /*access_config {
#       # Include this section to give the VM an external IP address
#     } */
#   }

#   # Install Webserver using file() function
#   metadata_startup_script = file("./startup5.sh")
# }