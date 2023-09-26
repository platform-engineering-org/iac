provider "http" {}

provider "tls" {}

provider "github" {
  token = local.github.token
  owner = var.owner
}
