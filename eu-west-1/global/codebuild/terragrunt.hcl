include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/codebuild/project"
}

inputs = {
  projects = [
    {
      name : "cnj-hello-backend-jakartaee"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-hello-backend-jakartaee.git"
    },
    {
      name : "cnj-hello-backend-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-hello-backend-micro.git"
    },
    {
      name : "cnj-hello-backend-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-hello-backend-quarkus.git"
    },
    {
      name : "cnj-hello-backend-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-hello-backend-spring.git"
    },
    {
      name : "cnj-common-observability-jakarta"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-observability-jakarta.git"
    },
    {
      name : "cnj-common-observability-javax"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-observability-javax.git"
    },
    {
      name : "cnj-common-observability-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-observability-spring.git"
    },
    {
      name : "cnj-common-persistence-jakarta"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-persistence-jakarta.git"
    },
    {
      name : "cnj-common-persistence-jpa"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-persistence-jpa.git"
    },
    {
      name : "cnj-common-rest-jakarta"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-rest-jakarta.git"
    },
    {
      name : "cnj-common-rest-javax"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-rest-javax.git"
    },
    {
      name : "cnj-common-rest-jee"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-rest-jee.git"
    },
    {
      name : "cnj-common-security-oidc-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-security-oidc-spring.git"
    },
    {
      name : "cnj-common-test-core"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-test-core.git"
    },
    {
      name : "cnj-common-test-jakarta"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-test-jakarta.git"
    },
    {
      name : "cnj-common-test-javax"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-common-test-javax.git"
    },
    {
      name : "cnj-config"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-config.git"
    },
    {
      name : "cnj-docker-tools"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-docker-tools.git"
    },
    {
      name : "cnj-k8s-tools"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-k8s-tools.git"
    },
    {
      name : "cnj-logging-backend-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-logging-backend-micro.git"
    },
    {
      name : "cnj-logging-backend-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-logging-backend-quarkus.git"
    },
    {
      name : "cnj-logging-backend-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-logging-backend-spring.git"
    },
    {
      name : "cnj-logging-downstream"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-logging-downstream.git"
    },
    {
      name : "cnj-logging-resources"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-logging-resources.git"
    },
    {
      name : "cnj-monitoring-backend-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-monitoring-backend-micro.git"
    },
    {
      name : "cnj-monitoring-backend-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-monitoring-backend-quarkus.git"
    },
    {
      name : "cnj-monitoring-backend-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-monitoring-backend-spring.git"
    },
    {
      name : "cnj-monitoring-downstream"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-monitoring-downstream.git"
    },
    {
      name : "cnj-monitoring-resources"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-monitoring-resources.git"
    },
    {
      name : "cnj-openapi"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-openapi.git"
    },
    {
      name : "cnj-payara-opentracing-jaeger"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-payara-opentracing-jaeger.git"
    },
    {
      name : "cnj-persistence-sql-bknd-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-persistence-sql-backend-micro.git"
    },
    {
      name : "cnj-persistence-sql-bknd-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-persistence-sql-backend-quarkus.git"
    },
    {
      name : "cnj-persistence-sql-bknd-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-persistence-sql-backend-spring.git"
    },
    {
      name : "cnj-persistence-sql-downstream"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-persistence-sql-downstream.git"
    },
    {
      name : "cnj-persistence-sql-resources"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-persistence-sql-resources.git"
    },
    {
      name : "cnj-resilience-backend-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-resilience-backend-micro.git"
    },
    {
      name : "cnj-resilience-backend-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-resilience-backend-quarkus.git"
    },
    {
      name : "cnj-resilience-backend-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-resilience-backend-spring.git"
    },
    {
      name : "cnj-resilience-downstream-a"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-resilience-downstream-a.git"
    },
    {
      name : "cnj-resilience-downstream-b"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-resilience-downstream-b.git"
    },
    {
      name : "cnj-rest"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-rest.git"
    },
    {
      name : "cnj-security-oidc"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-security-oidc.git"
    },
    {
      name : "cnj-tracing-backend-micro"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-tracing-backend-micro.git"
    },
    {
      name : "cnj-tracing-backend-quarkus"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-tracing-backend-quarkus.git"
    },
    {
      name : "cnj-tracing-backend-spring"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-tracing-backend-spring.git"
    },
    {
      name : "cnj-tracing-downstream"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-tracing-downstream.git"
    },
    {
      name : "cnj-tracing-resources"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/cnj-tracing-resources.git"
    },
    {
      name : "iac-tf-aws-cloudtrain-modules"
      description : "pull from GitHub"
      git_repo_url : "https://github.com/msgoat/iac-tf-aws-cloudtrain-modules.git"
    }
  ]
  project_environment_variables : {
    CLOUDTRAIN_EKS_DEPLOY_ENABLED : "true"
    CLOUDTRAIN_EKS_CLUSTER_NAME : "eks-eu-west-1-ctrainpltf-dev-train2023"
    CLOUDTRAIN_EKS_ROLE_ARN : "arn:aws:iam::928593304691:role/role-eks-eu-west-1-ctrainpltf-dev-train2023-admin"
    CLOUDTRAIN_EKS_INGRESS_HOST : "train2023-dev.k8s.cloudtrain.aws.msgoat.eu"
    CLOUDTRAIN_EKS_NAMESPACE : "cloudtrain"
  }
}
