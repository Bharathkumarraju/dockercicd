provider "aws" {
  region = "us-east-1"
  profile = "nonprod"
}


resource "aws_s3_bucket" "terraform-state-storage-nonprod" {
  bucket = "bharath-terraform-state-nonprod"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket" "terraform-state-storage-prod" {
  bucket = "bharath-terraform-state-prod"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "bharath-terraform-state"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

