###########################################################################
# AWS S3
###########################################################################

module "aws_s3" {
  source = "../modules/aws-s3"

  project = var.project
  tags    = local.tags
}

###########################################################################
# AWS VPC
###########################################################################

module "aws_vpc" {
  source = "../modules/aws-vpc"

  project = var.project

  cidr_block      = var.cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs

  tags = local.tags
}

###########################################################################
# AWS EKS
###########################################################################

module "aws_eks" {
  source = "../modules/aws-eks"

  project = var.project

  vpc_id     = module.aws_vpc.vpc_id
  subnet_ids = module.aws_vpc.public_subnets

  tags = local.tags
}

###########################################################################
# AWS ACM
###########################################################################

module "aws_acm" {
  source = "../modules/aws-acm"

  domain_name = var.domain_name
  zone_id     = data.aws_route53_zone.main.zone_id
  tags        = local.tags
}

###########################################################################
# AWS IAM
###########################################################################

module "aws_iam" {
  source = "../modules/aws-iam"

  project = var.project

  eks_oidc_provider_arn = module.aws_eks.oidc_provider_arn

  tags = local.tags
}
