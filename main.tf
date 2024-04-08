module "project" {
  source  = "ALT-F4-LLC/project/tfe"
  version = "0.4.0"

  description       = "abbottm project for managing workspaces"
  name              = "abbottm-project"
  organization_name = var.organization_name
}

module "workspace" {
  source  = "ALT-F4-LLC/workspace/tfe"
  version = "0.6.0"

  description       = "abbottm workspaces"
  execution_mode    = "local"
  name              = "abbottm-workspace"
  organization_name = var.organization_name
  project_id        = module.project.id
}
