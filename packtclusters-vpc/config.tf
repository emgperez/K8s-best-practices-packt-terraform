# Shared state configuration and AWS provider definition

terraform {
  backend "s3" {
    bucket = "emg-packtclusters-vpc-terraform-state"
    key = "packtclusters-vpc.tfstate"
    region = "eu-west-1" # Ireland
    dynamodb_table = "packtclusters-vpc-terraform-state-lock-dynamodb"
  }

  required_version = "~> 0.14.5"
  required_providers {
    aws = "~> 3.27"
  }
}

# Provider definition (AWS)
provider "aws" {
  region = var.aws_region
  version = "~> 3.27"
}
