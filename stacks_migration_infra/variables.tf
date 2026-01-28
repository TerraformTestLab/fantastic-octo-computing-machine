variable "organization_name" {
  default = "sujay-test-01"
}

variable "tfe_hostname" {
  default = "app.terraform.io"
}

variable "project_name" {
  default = "Tf-Migrate-Stack-Migration-Retry-Test"
}

variable "stack_name" {
  default = "hello-stacks-v6"
}

variable "stacks_config_file_dir" {
  default = "/Users/sujaysamanta/test/fantastic-octo-computing-machine/_stacks_generated"
}

variable "terraform_config_dir" {
  default = "/Users/sujaysamanta/test/fantastic-octo-computing-machine"
}

variable "workspace_deployment_mapping" {
  default = {
    dev-workspace  = "dev-workspace-deployment"
    prod-workspace = "prod-workspace-deployment"
  }
}
