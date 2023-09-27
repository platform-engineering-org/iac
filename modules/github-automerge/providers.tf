provider "github" {
  owner = var.owner_1
  token = var.github_token
}

provider "github" {
  alias = "secondary"
  owner = var.owner_2
  token = var.github_token
}
