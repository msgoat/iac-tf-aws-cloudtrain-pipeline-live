include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../iac-tf-aws-cloudtrain-modules//modules/network/vpc"
}

inputs = {
}
