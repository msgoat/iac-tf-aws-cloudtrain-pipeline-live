remote_state {
  backend = "s3"
  generate = {
    path = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    region = "eu-west-1"
    bucket = "s3-eu-west-1-ctrainpipe-all-terraform"
    dynamodb_table = "dyn-eu-west-1-ctrainpipe-all-terraform"
    key = "${path_relative_to_include()}/terraform.tfstate"
    encrypt = true
  }
}

inputs = {
  region_name = "eu-west-1"
  solution_name = "ctrainpipe"
  solution_stage = "all"
  solution_fqn = "ctrainpipe-all"
  common_tags = {
    "Organization" = "msg systems AG"
    "BusinessUnit" = "Branche Automotive + Manufacturing"
    "Department" = "Automotive Technology"
    "ManagedBy" = "Terraform"
    "PartOf" = "CloudTrain"
    "Solution" = "CloudTrain Pipeline"
    "Stage" = "global"
  }
}
