
module "example" {
  source = "../../../examples/shared_vpc_example"

  project_id           = var.project_id
  svpc_host_project_id = var.svpc_host_project_id
  svpc_network_name    = var.svpc_network_name
  svpc_subnetwork_name = var.svpc_subnetwork_name
}
