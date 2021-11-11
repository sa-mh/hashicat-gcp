module "network" {
  source  = "terraform-google-modules/network/google"
  version = "4.0.0"
  # insert the 3 required variables here
  network_name = "workshop-network"
  project_id = var.project
  

    subnets = [
  {
    subnet_name   = "workshop-subnet2"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
	]
}
