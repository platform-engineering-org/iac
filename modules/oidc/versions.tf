terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    github = {
      source  = "integrations/github"
      version = "5.42.0"
    }
  }
}
