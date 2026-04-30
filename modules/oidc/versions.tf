terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    github = {
      source  = "integrations/github"
      version = "6.12.1"
    }
  }
}
