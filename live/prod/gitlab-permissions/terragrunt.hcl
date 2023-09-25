terraform {
  source = "../../../modules//gitlab-permissions"
  extra_arguments "var-file" {
    commands  = ["apply", "plan"]
    arguments = ["-var-file=prod.tfvars"]
  }
}

include "root" {
  path = find_in_parent_folders()
}

locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

inputs = merge(
  local.environment_vars.locals
)
