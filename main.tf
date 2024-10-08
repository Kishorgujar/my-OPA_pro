provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "automation-cicd-pro-${var.region}-${random_string.bucket_suffix.result}"
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
}

