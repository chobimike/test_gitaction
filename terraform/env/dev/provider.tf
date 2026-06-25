provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Environment = local.env
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }
  required_version = "~>1.9.0"
  backend "s3" {
    bucket = "cbmk-tfstate-test"
    key    = "dev.tfstate"
    region = "ap-northeast-1"
  }
}