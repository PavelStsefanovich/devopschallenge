terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.18"
    }
  }

  backend "s3" {
    bucket  = "devopschallenge-tfstate-dev"
    key     = "tfstate"
    region  = "us-east-1"
    encrypt = true
    dynamodb_table = "devopschallenge-tflock-dev"
  }
#   required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
  profile = "terraform"
}

