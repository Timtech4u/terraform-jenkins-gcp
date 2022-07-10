
variable "project_id" {
  description = "The GCP project ID to run tests in"
}

variable "region" {
  description = "The GCP region to run tests in"
  default     = "us-east4"
}

variable "jenkins_instance_zone" {
  description = "The zone to deploy the Jenkins VM in"
  default     = "us-east4-b"
}

variable "jenkins_workers_zone" {
  description = "The name of the zone into which to deploy Jenkins workers"
  default     = "us-east4-c"
}
