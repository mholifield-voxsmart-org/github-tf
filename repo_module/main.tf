resource "github_repository" "repository" {
  name        = var.name
  description = var.description

  visibility      = var.visibility
  has_issues      = var.has_issues
  has_projects    = var.has_projects
  has_discussions = var.has_discussions
  has_wiki        = var.has_wiki

}
