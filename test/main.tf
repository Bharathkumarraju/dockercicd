provider "aws" {
  region = "us-east-1"
  profile = "prod"
}

provider "aws" {
  region = "us-east-1"
  profile = "${var.env-accepter}"
  alias = "prod_aws"
}

data "aws_region" "current" {}

terraform {
  backend "s3" {
    profile = "prod"
    bucket = "bharath-terraform-state-prod"
    key = "prod"
    dynamodb_table = "bharath-terraform-state"
    region = "us-east-1"
    profile = "prod"
  }
}

module "bharathk8s" {
  source = "../../modules/bharathk8s"

  vpc-cidr = "172.28.48.0/20"
  environment = "prod"
  availability-zones = "${var.availability-zones}"
}
