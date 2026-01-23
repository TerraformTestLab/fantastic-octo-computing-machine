organization_name  = "sujay-test-01"
stack_project_name = "config-file-default-test-project"
stack_name        = "config-file-default-test"
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
