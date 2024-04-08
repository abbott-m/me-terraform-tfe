data "tfe_github_app_installation" "this" {
  installation_id = tonumber(var.github_app_installation_id)
}
