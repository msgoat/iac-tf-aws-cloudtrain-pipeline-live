include {
  path = find_in_parent_folders()
}

terraform {
#  source = "git::https://github.com/msgoat/iac-tf-aws-cloudtrain-pipeline-modules.git//modules/codebuild/custom-build-environment-repository"
  source = "../../../../iac-tf-aws-cloudtrain-pipeline-modules//modules/codebuild/custom-build-environment-repository"
}

inputs = {
  repository_names = [
    "cloudtrain/codebuild-cbe-k8s",
    "cloudtrain/codebuild-cbe-iac",
  ]
}
