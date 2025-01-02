module "s3-evidhai" {
  count       = terraform.workspace == "dev" ? 0 : 1
  source      = "../modules/"
  bucket_name = "course-demo"
  environment = "dev"
}

module "s3-evidhai-1" {
  providers = {
    "aws" = aws.eu-west
  }
  source      = "../modules/"
  bucket_name = "course-demo-eu-west"
  environment = "dev"
}

