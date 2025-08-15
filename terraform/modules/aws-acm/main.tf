module "acm_eu_central_1" {
  source  = "terraform-aws-modules/acm/aws"
  version = "4.3.2"

  domain_name = var.domain_name
  zone_id     = var.zone_id

  subject_alternative_names = [
    "*.${var.domain_name}",
  ]

  wait_for_validation = true

  tags = var.tags
}
