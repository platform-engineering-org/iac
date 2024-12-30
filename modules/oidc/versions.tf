terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.5"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.6"
    }
    github = {
      source  = "integrations/github"
      version = "6.4.0"
    }
  }
}
