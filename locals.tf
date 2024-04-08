locals {
  projects = {
    "abbottm-project" = {
      description       = "abbottm project for managing workspaces"
      name              = "abbottm-project"
      organization_name = var.organization_name
    }
  }
  workspaces = {
    "abbottm-workspace" = {
      description         = "abbottm workspaces"
      execution_mode      = "local"
      name                = "abbottm-workspace"
      organization_name   = var.organization_name
      project_id          = module.project["abbottm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }
  }
}
