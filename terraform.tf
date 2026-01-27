terraform {
  required_version = "~>1.13.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  cloud {
    organization = "sujay-test-01"
    workspaces {
      # project = "Tf-Migrate-Stack-Migration-Retry-Test"
      tags = {
        # "terraform-migrate-stack-migration-retry-test" = "true"
        "migration-test" = "true"
      }
    }
  }
}