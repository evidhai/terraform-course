resource "aws_s3_bucket" "s3-evidhai" {

  bucket = "evidhai-${local.bucket_name}-${var.environment}"
  tags = {
    Name        = "evidhai-${local.bucket_name}"
    Environment = var.environment
  }


}

locals {
  bucket_name = var.bucket_name
}