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
      description         = "abbottm workspace"
      execution_mode      = "remote"
      organization_name   = var.organization_name
      project_id          = module.project["abbottm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/me-terraform-tfe"
    }
    "abbottm-github" = {
      description         = "abbottm github workspace"
      execution_mode      = "remote"
      organization_name   = var.organization_name
      project_id          = module.project["abbottm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/me-terraform-github"
    }
  }
}
