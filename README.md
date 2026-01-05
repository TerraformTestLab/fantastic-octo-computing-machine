# fantastic-octo-computing-machine

[Repo for HCP Terraform Project Tf-Migrate-Stack-Migration-Retry-Test](https://app.terraform.io/app/sujay-test-01/projects/prj-XzHVjdCZnmdcPEDS)
This repository contains Terraform configuration files for managing infrastructure as code using HashiCorp Terraform. It is designed to facilitate the deployment and management of cloud resources in a consistent and repeatable manner.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine version `1.13.5` or higher.
- An account with [HashiCorp Cloud Platform (HCP)](https://cloud.hashicorp.com/).
- An AWS account with the necessary permissions to create and manage resources.
- Doormat CLI installed and configured. Follow the [Doormat CLI installation instructions](https://docs.prod.secops.hashicorp.services/doormat/cli/)

## Workspace Details

- **Organization**: [sujay-test-01](https://app.terraform.io/app/sujay-test-01)
- **Project**: [Tf-Migrate-Stack-Migration-Retry-Test](https://app.terraform.io/app/sujay-test-01/projects/prj-XzHVjdCZnmdcPEDS)
- **Workspaces**:
  - [prod-workspace](https://app.terraform.io/app/sujay-test-01/workspaces/prod-workspace)
    - Type: `VCS-Driven`
    - Variable file used: `vcs.auto.tfvars`
    - Branch: `main`
    - push to the branch and then create a new run in HCP Terraform UI to apply changes.
  
  - [dev-workspace](https://app.terraform.io/app/sujay-test-01/workspaces/dev-workspace)
    - Type: `ClI-Driven`
    - Variable file used: `terraform.tfvars`
    - To apply changes, run the following command:

      ```bash
      terraform apply -var-file="terraform.tfvars"
      ```
