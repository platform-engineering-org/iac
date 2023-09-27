data "github_repositories" "repos_1" {
  query           = "org:${var.owner_1} archived:false"
  include_repo_id = true
}

resource "github_branch_protection" "repos_1_main_branch_protection" {
  for_each      = toset(data.github_repositories.repos_1.names)
  repository_id = each.value
  pattern       = "main"
  required_pull_request_reviews {
    pull_request_bypassers = ["/${var.bot_user_name}"]
  }
}

data "github_repositories" "repos_2" {
  provider        = github.secondary
  query           = "org:${var.owner_2} archived:false"
  include_repo_id = true
}

resource "github_branch_protection" "repos_2_main_branch_protection" {
  provider      = github.secondary
  for_each      = toset(data.github_repositories.repos_2.names)
  repository_id = each.value
  pattern       = "main"
  required_pull_request_reviews {
    pull_request_bypassers = ["/${var.bot_user_name}"]
  }
}
