variable "organization_name" {
  default = "sujay-test-01"
}

variable "tfe_hostname" {
  default = "app.terraform.io"
}

variable "project_name" {
  default = "stack-retry-test-demo"
}

variable "stack_name" {
  default = "stack-retry-test-v3"
}

variable "stacks_config_file_dir" {
  default = "/Users/sujaysamanta/Workspace/Cursor-AI/terraform-stacks-migration-test/stack-terraform-test-v3/_stacks_generated"
}

variable "terraform_config_dir" {
  default = "/Users/sujaysamanta/Workspace/Cursor-AI/terraform-stacks-migration-test/stack-terraform-test-v3"
}

variable "workspace_deployment_mapping" {
  default = {
    dev-workspace  = "dev-workspace"
    prod-workspace = "prod-workspace"
  }
}
