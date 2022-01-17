provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "sanjayrohilla"
    key    = "terraform/ecr/terraform.tfstate"
    region = "ap-southeast-1"
  }
}