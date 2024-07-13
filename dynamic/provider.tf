terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  backend "s3" {
    bucket         = "praveen-remote-state-s3"
    key            = "dynamic-demo"
    region         = "us-east-1"
    dynamodb_table = "dynamic-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
