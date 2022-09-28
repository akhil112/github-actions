resource "google_compute_firewall" "rules" {
  project     = var.project_id
  name        = var.firewall_name
  network     = var.network
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["foo"]
  target_tags = ["web"]
}
