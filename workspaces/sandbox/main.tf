
provider "aws" { // set the profile (contains the credentials) to be used with the AWS_PROFILE environment variable
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

module "s3-webapp" {
  source = "../../modules/aws-s3-webapp"
//  source  = "app.terraform.io/personal-rob/s3-webapp/aws"
//  version = "1.0.0"

  name   = var.name
  prefix = var.prefix
  region = var.region
}
