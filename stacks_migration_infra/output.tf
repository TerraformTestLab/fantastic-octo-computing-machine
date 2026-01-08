output "project_url" {
  value = "https://app.terraform.io/app/${var.organization_name}/projects/${tfe_project.stack_project.id}"
}

output "stack_url" {
  value = "https://app.terraform.io/app/${var.organization_name}/projects/${tfe_project.stack_project.id}/stacks/${tfe_stack.stack.id}"
}

locals {
  stack_deployment_details = (
    tfmigrate_stack_migration.stack_migration.migration_hash != "" ?
    provider::tfmigrate::decode_stacks_migration_hash_to_json(
        tfmigrate_stack_migration.stack_migration.migration_hash
      ) : null
  )
}

output "stack_deployment_details" {
  value = local.stack_deployment_details
}