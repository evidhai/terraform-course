terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.64"
    }
  }
  backend "s3" {
    bucket = "statefile-remote-backend" #replace with your bucket name
    key    = "key-remote-backend"       #replace with your object key name
    region = "us-east-1"                #replace with your region where s3 exists
  }

}

provider "aws" {
  # Configuration options
}