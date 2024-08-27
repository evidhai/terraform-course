resource "aws_s3_bucket" "example" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = "prod"
  }
}

resource "aws_s3_bucket" "example-2" {
  bucket = "${local.bucket_name}-2"

  tags = {
    Name        = local.bucket_name
    Environment = "prod"
  }
}


data "aws_s3_bucket" "course" {
  bucket = "s3.evidhai.com"
}

locals {
  bucket_name = "evidhai-course-demo"
}

output "s3_query" {
  value = data.aws_s3_bucket.course
  description = "querying datablock"
}

output "new_s3" {
  value = resource.aws_s3_bucket.example
  description = "new s3 bucket details"
}