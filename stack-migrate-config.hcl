organization_name  = "sujay-test-01"
stack_project_name = "Tf-Migrate-Stack-Migration-Retry-Test"
stack_name         = "hello-stacks-v6"
existing_project   = true
workspace_config = {
  "dev-workspace" = {
    deployment_name = "dev-workspace-deployment"
    tf_vars_file    = ["terraform.tfvars"]
  }

  "prod-workspace" = {
    deployment_name = "prod-workspace-deployment"
    tf_vars_file    = ["vcs.auto.tfvars"]
  }
}
