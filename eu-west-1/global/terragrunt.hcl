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
    "BusinessUnit" = "Branche Automotive"
    "Department" = "PG Cloud"
    "ManagedBy" = "Terraform"
    "PartOf" = "CloudTrain"
    "Solution" = "CloudTrain Pipeline"
    "Stage" = "global"
  }
  network_name = "cicd"
  network_cidr = "10.31.0.0/16"
  number_of_zones_to_span = 3
  inbound_traffic_cidrs = [ "0.0.0.0/0" ]
  nat_strategy = "NAT_NONE"
  zones_to_span = 3
  subnets = [
    {
      subnet_name = "app"
      accessibility = "public"
      newbits = 8
      tags = {}
    },
    {
      subnet_name = "data"
      accessibility = "private"
      newbits = 4
      tags = {}
    }
  ]
}
