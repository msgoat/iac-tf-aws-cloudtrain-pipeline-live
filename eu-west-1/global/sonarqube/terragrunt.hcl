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
  source = "git::https://github.com/msgoat/iac-tf-aws-cloudtrain-pipeline-modules.git//modules/sonarqube/standalone"
  # source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/sonarqube/standalone"
}

inputs = {
  ec2_instance_type = "t4g.medium"
#  ec2_ami_id = "ami-0ab98ce2ebcbcf4af"
  ec2_ami_architecture = "arm64"
  ec2_subnet_id = element([ for sn in dependency.network.outputs.subnets : sn.subnet_id if sn.subnet_template_name == "app" ], 0)
  ec2_key_pair_name = "key-eu-west-1-cloudtrain-pipeline-admin"
  postgresql_version = "14.7"
  db_subnet_ids = [ for sn in dependency.network.outputs.subnets : sn.subnet_id if sn.subnet_template_name == "data" ]
}
