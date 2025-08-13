###########################################################################
# AWS EKS
###########################################################################

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.0.8"

  name               = var.project
  kubernetes_version = var.kubernetes_version

  endpoint_public_access                   = true
  enable_cluster_creator_admin_permissions = true

  compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  cloudwatch_log_group_retention_in_days = var.cloudwatch_log_group_retention_in_days

  tags = var.tags
}
