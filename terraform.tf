terraform {
  required_version = "~>1.13.4"
  cloud {
    organization = "sujay-test-01"
    workspaces {
      project = "Tf-Migrate-Stack-Migration-Retry-Test"
    }
  }
}