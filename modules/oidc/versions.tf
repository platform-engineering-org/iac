terraform {
  required_providers {
    provider aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
    
    provider http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }

    provider tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }

    provider github = {
      source  = "integrations/github"
      version = "5.37.0"
    }
  }
}
