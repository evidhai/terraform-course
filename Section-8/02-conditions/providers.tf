terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.64"
    }
  }
}

provider "aws" {
  # Configuration options
}