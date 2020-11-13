terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = ">= 2.68, < 4.0"
  }

  backend "s3" {
    encrypt = true
    bucket = "prod-services-terraform-state"
    region = "us-west-2"
    key = "prod_environment/vpc-state"
    dynamodb_table = "prod-services-terraform-state-lock"
  }
}
