terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "GBG-Terraform-Workshop"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
