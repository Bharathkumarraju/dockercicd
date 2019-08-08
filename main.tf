provider "aws" {
  region = "us-east-1"
  profile = "nonprod"
}

provider "aws" {
  region = "us-east-1"
  profile = "${var.env-accepter}"
  alias = "prod_aws"
}

data "aws_region" "current" {}

terraform {
  backend "s3" {
    bucket = "bharath-terraform-state-nonprod"
    key = "dev"
    dynamodb_table = "bharath-terraform-state"
    region = "us-east-1"
    profile = "nonprod"

  }
}

module "bharathk8s" {
  source = "../../modules/bharathk8s"

  vpc-cidr = "172.28.0.0/20"
  environment = "dev"
  availability-zones = "${var.availability-zones}"
}

