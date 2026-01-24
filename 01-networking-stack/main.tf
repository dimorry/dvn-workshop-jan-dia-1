terraform {
  backend "s3" {
    bucket       = "dvn-workshop-jan-remote-backend-bucket"
    key          = "networking/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    # dynamodb_table = "dvn-workshop-jan-state-locking-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.assume_role.region
  default_tags {
    tags = var.default_tags
  }
  assume_role {
    role_arn = var.assume_role.arn
  }
}
