module "test-vpc-module" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 3.2.0"
  project_id   = var.project # Replace this with your project ID in quotes
  network_name = "workshop-network"
  mtu          = 1460

  subnets = [
  {
    subnet_name   = "workshop-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}
