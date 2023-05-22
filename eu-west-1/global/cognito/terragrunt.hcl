include "root" {
  path = find_in_parent_folders()
}

include "common_providers" {
  path = "${get_terragrunt_dir()}/../../../_env/common_providers.hcl"
}

terraform {
  source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/cognito"
}

inputs = {
  user_pool_name = "train2023"
  groups = [ "CLOUDTRAIN_USER", "CLOUDTRAIN_ADMIN" ]
}
