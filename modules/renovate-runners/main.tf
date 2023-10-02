resource "github_repository" "repository" {
  name        = "renovate-runner"
  description = "Self-hosted Renovate Runner"

  has_issues = true
  visibility = "public"
  template {
    owner                = "platform-engineering-org-test"
    repository           = "renovate-template-test"
    include_all_branches = true
  }
}
