resource "google_compute_firewall" "rules" {
  project     = "aem-dev-363905"
  name        = "dev-aem-firewall"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["foo"]
  target_tags = ["web"]
}
