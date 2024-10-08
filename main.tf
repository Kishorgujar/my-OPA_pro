provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = lower("automation-cicd-pro-ap-south-1-${random_string.bucket_suffix.result}")
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
}

