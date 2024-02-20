locals {
  backend_team_members  = ["mholifield-test-account01"]
  frontend_team_members = ["holifieldheights"]
  all_team_members      = distinct(concat(local.backend_team_members, local.frontend_team_members))
}

resource "github_membership" "membership" {
  for_each = toset(local.all_team_members)
  username = each.key
  role     = "member"
}

# Setup Teams for the organization
resource "github_team" "backend_team" {
  name        = "backend-team"
  description = "Team fo backend developers"
}

resource "github_team" "frontend_team" {
  name        = "frontend-team"
  description = "Team fo frontend developers"
}

resource "github_team_members" "backend_team_members" {
  team_id  = github_team.backend_team.id
  for_each = toset(local.backend_team_members)

  members {
    username = each.key
  }
}

resource "github_team_members" "frontend_team_members" {
  team_id  = github_team.frontend_team.id
  for_each = toset(local.frontend_team_members)

  members {
    username = each.key
  }
}