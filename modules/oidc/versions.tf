terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    github = {
      source  = "integrations/github"
      version = "6.2.3"
    }
  }
}
