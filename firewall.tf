resource "google_compute_firewall" "rules" {
  project     = "aem-migr"
  name        = "my-firewall-rule1"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "all"
    ports    = []
  }

  source_tags = ["foo"]
  target_tags = ["web"]
}
