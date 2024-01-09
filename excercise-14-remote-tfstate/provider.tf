terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-bucket-sg"
    key = "foreach"
    region = "us-east-1"
    dynamodb_table = "tfstate-lock-sg"
  }
}

provider "aws" {
    region = "us-east-1"
}