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
