resource "aws_s3_bucket" "example" {
  bucket = local.bucket_name
  tags = {
    Name        = local.bucket_name
    Environment = "dev"
  }
  lifecycle {
    create_before_destroy = false #this will create a new bucket before destroying the old one
  }
}

resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
  depends_on = [aws_s3_bucket.example]
}

data "aws_s3_bucket" "s3" {
  bucket = "bucket name" #replace this with your bucket name that exist in your account
}

locals {
  bucket_name = "evidhai-test" #replace this with your bucket name
}

output "s3_query" {
  value       = data.aws_s3_bucket.s3
  description = "querying data block"
}

output "new_s3" {
  value       = resource.aws_s3_bucket.example
  description = "new s3 bucket details"

}