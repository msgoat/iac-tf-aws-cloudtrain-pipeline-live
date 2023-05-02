#!/usr/bin/env bash
# cloudtrain-codebuild-install-terraform.sh
# ----------------------------------------------------------------------------
# Installs terraform and terragrunt on AWS CodeBuild agents.
# Stored on shared S3 bucket and must be downloaded and executed
# in install phase of each build.
# ----------------------------------------------------------------------------
echo "Install terraform"
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
echo "Check terraform version"
terraform version

echo "Install terraform"
TERRAGRUNT_VERSION=v0.45.4
curl -SL https://github.com/gruntwork-io/terragrunt/releases/download/$TERRAGRUNT_VERSION/terragrunt_linux_amd64 -o /tmp/terragrunt_linux_amd64
sudo chmod a+x /tmp/terragrunt_linux_amd64
sudo mv /tmp/terragrunt_linux_amd64 /usr/bin/terragrunt
terragrunt --version

