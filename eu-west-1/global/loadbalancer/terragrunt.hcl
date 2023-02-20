include {
  path = find_in_parent_folders()
}

dependency network {
  config_path = "../network"
}

terraform {
  source = "../../../../iac-tf-aws-compute-ec2-modules//modules/application-loadbalancer"
}

inputs = {
  loadbalancer_name = "cicd"
  loadbalancer_subnet_ids = [ for sn in dependency.network.outputs.subnets : sn.subnet_id if sn.subnet_template_name == "gateinout" ]
  target_group_subnet_ids = [ for sn in dependency.network.outputs.subnets : sn.subnet_id if sn.subnet_template_name == "worker" ]
  host_names = [ "cloudtrain.aws.msgoat.eu", "*.cloudtrain.aws.msgoat.eu" ]
  tls_certificate_name = "cloudtrain.aws.msgoat.eu"
  eks_cluster_name = ""
}
