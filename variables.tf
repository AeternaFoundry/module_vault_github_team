variable "github_teams" {
  description = <<EOT
Map of github_teams, attributes below
Required:
    - team
Optional:
    - backend
    - namespace
    - policies
EOT

  type = map(object({
    team      = string
    backend   = optional(string)
    namespace = optional(string)
    policies  = optional(list(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

