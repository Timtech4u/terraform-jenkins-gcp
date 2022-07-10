
resource "tls_private_key" "gce-keypair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "gce-keypair-pk" {
  content  = tls_private_key.gce-keypair.private_key_pem
  filename = "${path.module}/ssh/key"
}

module "example" {
  source = "../../../examples/simple_example"

  project_id            = var.project_id
  region                = var.region
  network               = google_compute_network.main.self_link
  subnetwork            = google_compute_subnetwork.subnetwork.self_link
  jenkins_instance_zone = var.jenkins_instance_zone
  jenkins_workers_zone  = var.jenkins_workers_zone

  jenkins_instance_metadata = {
    sshKeys = "user:${tls_private_key.gce-keypair.public_key_openssh}"
  }
}

