include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../iac-tf-aws-pipeline-modules//modules/codebuild/project"
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
    }
  ]
}
