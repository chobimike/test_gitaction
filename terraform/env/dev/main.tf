module "vpc" {
  source      = "../../modules/vpc"
  name_prefix = local.name_prefix
}