provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "automation-cicd-pro-ap-south-1-pzrctulv"
  
  # Adding or updating tags
  tags = {
    Name = "MyBucket"
    Env  = "UAT"
  }

  # Optional: Adjust the ACL if needed
  acl = "public"
}
