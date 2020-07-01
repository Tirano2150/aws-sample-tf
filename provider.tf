provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-eu-west-1-122072647213"
    key    = "sample/terraform.tfstate"
    region = "eu-west-1"
  }
}
