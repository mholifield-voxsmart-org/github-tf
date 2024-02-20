# Block to define api repo and permissions
module "api" {
  source = "./repo_module"
  name   = "voxsmart-service-api"

}

resource "github_repository_collaborators" "api_collaborators" {
  repository = module.api.name

  team {
    permission = "admin"
    team_id    = github_team.backend_team.id
  }

  team {
    permission = "pull"
    team_id    = github_team.frontend_team.id
  }
}


# Block to define ui repo and permissions
module "ui" {
  source = "./repo_module"
  name   = "voxsmart-service-ui"

}

resource "github_repository_collaborators" "ui_collaborators" {
  repository = module.ui.name

  team {
    permission = "admin"
    team_id    = github_team.frontend_team.id
  }

}

# Block to define sdk repo and permissions
module "sdk" {
  source     = "./repo_module"
  name       = "voxsmart-service-sdk"
  visibility = "public"
}

resource "github_repository_collaborators" "sdk_collaborators" {
  repository = module.sdk.name

  team {
    permission = "push"
    team_id    = github_team.backend_team.id
  }

  team {
    permission = "push"
    team_id    = github_team.frontend_team.id
  }

}