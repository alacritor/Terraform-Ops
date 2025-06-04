resource "google_compute_global_forwarding_rule" "aperture-entry-point1" {
  name                  = "aperture-entry-point1"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  port_range            = "80"
  target                = google_compute_target_http_proxy.aperture-proxy.self_link
  depends_on            = [google_compute_subnetwork.aperture-hq-prod]
  description           = "Global forwarding rule for Aperture entry point"
}

resource "google_compute_target_http_proxy" "aperture-proxy" {
  name    = "aperture-proxy"
  url_map = google_compute_url_map.aperture-url.id
}

resource "google_compute_url_map" "aperture-url" {
  name            = "aperture-url"
  default_service = google_compute_backend_service.aperture-backend.id
}

resource "google_compute_backend_service" "aperture-backend" {
  name                  = "aperture-backend"
  protocol              = "HTTP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  timeout_sec           = 10
  health_checks         = [google_compute_http_health_check.aperture-health-check.id]
  enable_cdn            = true
  backend {
    group           = google_compute_region_instance_group_manager.aperture-mig.instance_group
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
  }
}

resource "google_compute_health_check" "aperture-health-check" {
  name = "aperture-health-check"
  http_health_check {
    port_specification = "USE_SERVING_PORT"
    request_path       = "/"
  }
}