# # https://developer.hashicorp.com/terraform/language/values/outputs

# output "mylb_static_ip_address" {
#   description = "The static IP address of the load balancer."
#   value       = google_compute_address.lb.address
# }

# # https://developer.hashicorp.com/terraform/language/functions/join
# output "compute_zones" {
#   description = "Comma-separated compute zones"
#   # convert set into string delimited by commas (CSV) before output
#   value       = join(", ", data.google_compute_zones.available.names)
# }

output "instance_external_ip" {
  value       = "http://${google_compute_address.aperture-vm-ip.address}"
  description = "The external IP address of the GCE instance."
}


# output "instance_external_ips" {
#   value = {
#     vm1 = "http://${google_compute_instance.aperture-instance1.network_interface[0].access_config[0].nat_ip}"
#     vm2 = "http://${google_compute_instance.aperture-instance2.network_interface[0].access_config[0].nat_ip}"
#     vm3 = "http://${google_compute_instance.aperture-instance3.network_interface[0].access_config[0].nat_ip}"
#     vm4 = "http://${google_compute_instance.aperture-instance4.network_interface[0].access_config[0].nat_ip}"
#     vm5 = "http://${google_compute_instance.aperture-instance5.network_interface[0].access_config[0].nat_ip}"
#   }
#   description = "External IPs of both VMs"
# }


output "network_attributes" {
  value = {
    name      = google_compute_network.aperture-vpc-prod.name
    id        = google_compute_network.aperture-vpc-prod.id
    self_link = google_compute_network.aperture-vpc-prod.self_link
  }
}

