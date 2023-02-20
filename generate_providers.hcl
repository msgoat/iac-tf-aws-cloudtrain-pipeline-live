# Generates a providers.tf file with all requested providers
generate "providers" {
  path      = "providers.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  region = var.region_name
}
EOF
}