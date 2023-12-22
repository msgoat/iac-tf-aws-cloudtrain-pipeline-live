include {
  path = find_in_parent_folders()
}

locals {
  required_providers = [ "aws" ]
  generate_providers = read_terragrunt_config(find_in_parent_folders("generate_providers.hcl"))
}

generate = local.generate_providers.generate

dependency network {
  config_path = "../network"
}

terraform {
  source = "git::https://github.com/msgoat/iac-tf-aws-cloudtrain-pipeline-modules.git//modules/nexus/standalone"
  # source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/nexus/standalone"
}

inputs = {
  subnet_id = dependency.network.outputs.subnets[0].subnet_id
  ec2_key_pair_name = "key-eu-west-1-cloudtrain-pipeline-admin"
}
