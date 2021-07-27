module "network" {
  source      = "./modules/network"
  env         = var.environment
  az1         = "${var.region}-${var.az1}"
  az2         = "${var.region}-${var.az2}"
  name-tag    = var.project
  cidr-prefix = var.cidr-prefix
}
