output "github_teams_id" {
  description = "Map of id values across all github_teams, keyed the same as var.github_teams except keys with no id are omitted"
  value       = { for k, v in vault_github_team.github_teams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "github_teams_backend" {
  description = "Map of backend values across all github_teams, keyed the same as var.github_teams except keys with no backend are omitted"
  value       = { for k, v in vault_github_team.github_teams : k => v.backend if v.backend != null && length(v.backend) > 0 }
}
output "github_teams_namespace" {
  description = "Map of namespace values across all github_teams, keyed the same as var.github_teams except keys with no namespace are omitted"
  value       = { for k, v in vault_github_team.github_teams : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "github_teams_policies" {
  description = "Map of policies values across all github_teams, keyed the same as var.github_teams except keys with no policies are omitted"
  value       = { for k, v in vault_github_team.github_teams : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "github_teams_team" {
  description = "Map of team values across all github_teams, keyed the same as var.github_teams except keys with no team are omitted"
  value       = { for k, v in vault_github_team.github_teams : k => v.team if v.team != null && length(v.team) > 0 }
}

