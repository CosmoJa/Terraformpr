terraform {
  backend "s3" {
    bucket                  = "mybucketcosmo"
    key                     = "my-terraform-project"
    region                  = "us-east-2"
    # shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws"{
  region = "us-east-2"
}

resource "aws_ecr_repository" "foo" {
  name                 = "test"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}