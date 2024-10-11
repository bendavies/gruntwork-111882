# This is the configuration for Terragrunt, a thin wrapper for Terraform: https://terragrunt.gruntwork.io/

# Override the terraform source with the actual version we want to deploy.
terraform {
  source = "${get_terragrunt_dir()}/../../modules/null"
}


dependency "bar" {
  config_path = "${get_terragrunt_dir()}/../null-bar"
}

# ---------------------------------------------------------------------------------------------------------------------
# Module parameters to pass in. Note that these parameters are environment specific.
# ---------------------------------------------------------------------------------------------------------------------
inputs = {
  #input = dependency.bar.outputs.output
  input = "foo"
}
