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
  source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/traefik/standalone"
}

inputs = {
  subnet_id = dependency.network.outputs.subnets[0].subnet_id
  ec2_key_pair_name = "key-eu-west-1-cloudtrain-pipeline-admin"
  ec2_ami_id = "ami-0d7f7c30a728f71f0"
  domain_name = "cloudtrain.aws.msgoat.eu"
  backends = [
    {
      name = "nexus"
      ec2_instance_name = "ec2-eu-west-1-ctrainpipe-all-nexus"
      protocol = "http"
      port = 8081
    },
    {
      name = "docker"
      ec2_instance_name = "ec2-eu-west-1-ctrainpipe-all-harbor"
      protocol = "http"
      port = 80
    },
    {
      name = "sonarqube"
      ec2_instance_name = "ec2-eu-west-1-ctrainpipe-all-sonarqube"
      protocol = "http"
      port = 9000
    }
  ]
}
