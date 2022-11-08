# ----------------------------------------------------------------------------
# main.tf
# ----------------------------------------------------------------------------

provider "aws" {
  region = "eu-west-1"
}

module backend {
  source = "../../../../iac-tf-aws-backend-module"
  region_name = "eu-west-1"
  solution_name = "ctrainpipe"
  solution_stage = "all"
  solution_fqn = "ctrainpipe-all"
  common_tags = {
    Organization = "msg systems ag"
    BusinessUnit = "Branche Automotive + Manufacturing"
    Department = "Automotive Technology"
  }
  backend_name = "terraform"
}
