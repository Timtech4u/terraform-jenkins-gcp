
// These outputs are used to test the module with kitchen-terraform
// They do not need to be included in real-world uses of this module

output "jenkins_instance_zone" {
  description = "The GCP zone the Jenkins instance was launched into"
  value       = module.jenkins-gce.jenkins_instance_zone
}

