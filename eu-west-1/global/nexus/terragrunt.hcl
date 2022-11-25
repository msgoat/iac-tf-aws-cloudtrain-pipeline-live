include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../iac-tf-aws-pipeline-modules//modules/nexus/standalone"
}

inputs = {
  subnet_id = "subnet-052161c14da82f93e"
  ec2_key_pair_name = "key-eu-west-1-cloudtrain-nexus"
}
