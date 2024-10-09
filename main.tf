provider "aws" {
  region = var.region
}
 
resource "aws_s3_bucket" "example" {
  # Changed the bucket name to trigger an update action
  bucket = lower("automation-cicd-pro-ap-south-1-modified-${random_string.bucket_suffix.result}")
}
 
resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
}
