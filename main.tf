provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-12345"  # Change this to a unique bucket name
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id  # Use .id to refer to the bucket
  acl    = "private"
}


