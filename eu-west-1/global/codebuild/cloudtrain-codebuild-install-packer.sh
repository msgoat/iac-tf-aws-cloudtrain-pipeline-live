#!/usr/bin/env bash
# cloudtrain-codebuild-install-packer.sh
# ----------------------------------------------------------------------------
# Installs Packer on AWS CodeBuild agents.
# Stored on shared S3 bucket and must be downloaded and executed
# in install phase of each build.
# ----------------------------------------------------------------------------
echo "Install Packer"
PACKER_VERSION=1.9.4
echo "Download and unpack packer binary"
curl -kSL https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip -o /tmp/packer.zip
unzip -q /tmp/packer.zip -d /tmp
sudo chmod a+x /tmp/packer
sudo mv /tmp/packer /usr/bin/packer
echo "Check terraform version"
packer --version
