
output "project_id" {
  description = "The project ID that fixtures and examples were created in"
  value       = var.project_id
}

output "region" {
  description = "The GCP region that fixtures and examples were created in"
  value       = var.region
}

output "jenkins_instance_name" {
  description = "The name of the running Jenkins instance"
  value       = module.example.jenkins_instance_name
}

output "jenkins_instance_zone" {
  description = "The zone in which Jenkins is running"
  value       = module.example.jenkins_instance_zone
}

output "jenkins_instance_public_ip" {
  description = "The public IP of the Jenkins instance"
  value       = module.example.jenkins_instance_public_ip
}

