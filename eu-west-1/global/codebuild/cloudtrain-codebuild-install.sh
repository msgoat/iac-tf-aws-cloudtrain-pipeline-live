#!/usr/bin/env bash
# cloudtrain-codebuild-install.sh
# ----------------------------------------------------------------------------
# Installs some missing prerequisites on AWS CodeBuild agents.
# Stored on shared S3 bucket and must be downloaded and executed
# in install phase of each build.
# ----------------------------------------------------------------------------
echo "Install helm"
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version

echo "Install docker compose plugin"
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
DOCKER_COMPOSE_PLUGIN_VERSION=v2.16.0
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_PLUGIN_VERSION/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
echo "Check docker compose plugin version"
docker compose version
