terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    github = {
      source  = "integrations/github"
      version = "5.45.0"
    }
  }
}
