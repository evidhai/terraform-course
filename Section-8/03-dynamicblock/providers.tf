terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.64"
    }
  }

  backend "s3" {
    bucket         = "techpechuterraformbackend"
    key            = "evidhai-state/demo"
    region         = "us-east-1"
    dynamodb_table = "evidhai-state"
  }

}

provider "aws" {
  # Configuration options
}