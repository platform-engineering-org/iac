terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
    github = {
      source  = "integrations/github"
      version = "5.40.0"
    }
  }
}
