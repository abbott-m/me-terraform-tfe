module "project" {
  source  = "ALT-F4-LLC/project/tfe"
  version = "0.4.0"

  for_each          = local.projects
  name              = each.key
  description       = each.value.description
  organization_name = var.organization_name
}


module "workspace" {
  source  = "ALT-F4-LLC/workspace/tfe"
  version = "0.6.0"

  for_each          = local.workspaces
  name              = each.key
  description       = each.value.description
  execution_mode    = each.value.execution_mode
  organization_name = var.organization_name
  project_id        = each.value.project_id
}
