resource "aws_s3_bucket" "example" {
  bucket = "evidhai-test" #replace this with your bucket name
  tags = {
    Name        = "evidhai-test" #replace this with your bucket name
    Environment = "dev"
  }
}

data "aws_s3_bucket" "s3" {
  bucket = "bucket name" #replace this with your bucket name that exist in your account

}