resource "google_compute_firewall" "rules" {
  project     = "aem-dev-363905"
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
