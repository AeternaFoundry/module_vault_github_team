resource "vault_github_team" "github_teams" {
  for_each = var.github_teams

  team      = each.value.team
  backend   = each.value.backend
  namespace = each.value.namespace
  policies  = each.value.policies
}

