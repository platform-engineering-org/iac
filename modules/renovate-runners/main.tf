resource "github_repository" "repository" {
  name        = "renovate-runner"
  description = "Self-hosted Renovate Runner"

  visibility = "public"
}