provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-state-eu-west-1-122072647213"
    key    = "sample/terraform.tfstate"
    region = "eu-west-1"
  }
}
