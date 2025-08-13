###########################################################################
# Remote S3 Backend
###########################################################################

terraform {
  backend "s3" {
    bucket       = "devops-engineer-assignment-terraform-state"
    key          = "terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
    encrypt      = true
    profile      = "devops-engineer-assignment"
  }
}
