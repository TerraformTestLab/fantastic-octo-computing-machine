terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.73.0"
    }
    tfmigrate = {
      source  = "hashicorp/tfmigrate"
      version = "2.0.0-beta3"
    }
  }
}

provider "tfe" {
  hostname     = var.tfe_hostname
  organization = var.organization_name
}

resource "tfe_project" "stack_project" {
  name         = var.project_name
  organization = var.organization_name
}

resource "tfe_stack" "stack" {
  name       = var.stack_name
  project_id = tfe_project.stack_project.id
  migration  = true # Identifies the stack is created for migration purposes
}

resource "tfmigrate_stack_migration" "stack_migration" {
  config_file_dir              = var.stacks_config_file_dir
  organization                 = var.organization_name
  name                         = tfe_stack.stack.name
  project                      = tfe_project.stack_project.name
  terraform_config_dir         = var.terraform_config_dir
  workspace_deployment_mapping = var.workspace_deployment_mapping
  depends_on = [
        tfe_stack_variable_set.varset_link_for_deployment_dev-workspace-deployment,
        tfe_stack_variable_set.varset_link_for_deployment_prod-workspace-deployment
    ]
}



resource "tfe_stack_variable_set" "varset_link_for_deployment_dev-workspace-deployment" {
  variable_set_id = "varset-AAraJtD286f4ty2j"
  stack_id        = tfe_stack.stack.id
}




resource "tfe_stack_variable_set" "varset_link_for_deployment_prod-workspace-deployment" {
  variable_set_id = "varset-Gk9zA73mnHNSPCkB"
  stack_id        = tfe_stack.stack.id
}



import {
  to = tfe_project.stack_project
  id = "prj-XzHVjdCZnmdcPEDS"
}

