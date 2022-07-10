
locals {
  example_name = "simple-example"
}

resource "random_string" "suffix" {
  length  = 4
  special = "false"
  upper   = "false"
}

provider "google" {
  project = var.project_id
}

resource "google_compute_network" "main" {
  name                    = "cft-jenkins-test-${local.example_name}-${random_string.suffix.result}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "cft-jenkins-test-${local.example_name}-${random_string.suffix.result}"
  ip_cidr_range = "10.0.0.0/21"
  region        = var.region
  network       = google_compute_network.main.self_link
}

resource "google_compute_firewall" "ssh" {
  name    = "cft-jenkins-test-${local.example_name}-ssh-access"
  network = google_compute_network.main.self_link
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

