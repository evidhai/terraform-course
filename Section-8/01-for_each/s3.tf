resource "aws_s3_bucket" "example" {
  for_each = local.s3_number

  bucket = "${local.bucket_name}-${each.value + 4}"
  tags = {
    Name        = local.bucket_name
    Environment = "prod"
  }
}

moved {
  from = aws_s3_bucket.example[0]
  to   = aws_s3_bucket.example["one"]
}

moved {
  from = aws_s3_bucket.example[1]
  to   = aws_s3_bucket.example["two"]
}



resource "aws_s3_bucket" "example-2" {
  bucket = "${lower(local.bucket_name)}-3"

  tags = {
    Name        = local.bucket_name
    Environment = "prod"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example-2.id
  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.example-2]

}

