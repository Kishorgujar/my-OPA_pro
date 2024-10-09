provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "automation-cicd-pro-ap-south-1-pzrctulv"
  
  # Updating the tag "Environment" to have the value "UAT"
  tags = {
    Name        = "MyBucket"
    Environment = "UAT"
  }

  # Optional: Keep or adjust the ACL if needed
  acl = "private"
}
