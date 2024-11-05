terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  region = var.region
}


terraform {
  backend "remote" {
    organization = "opsmen"

    workspaces {
      name = "terraform-cloud"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "opsmen-terraform-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }
