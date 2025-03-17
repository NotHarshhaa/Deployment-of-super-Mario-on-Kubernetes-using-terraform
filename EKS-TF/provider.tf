terraform {
  required_version = ">= 1.3.0"  # Ensuring compatibility with Terraform 1.3+

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "ap-south-1"
  shared_credentials_files = ["~/.aws/credentials"]  # Use AWS credentials file
  profile                  = "default"  # Specify AWS CLI profile if required
  default_tags {
    tags = {
      Project     = "Super Mario EKS Deployment"
      Environment = "Production"
    }
  }
}
