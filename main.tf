module "network" {
  source = "./modules/network"

  env         = var.environment
  az1         = "${var.region}-${var.az1}"
  az2         = "${var.region}-${var.az2}"
  name-tag    = var.project
  cidr-prefix = var.cidr-prefix
}

module "extra-subnets" {
  source = "./modules/extra-modules/subnets"

  az1         = "${var.region}-${var.az1}"
  az2         = "${var.region}-${var.az2}"
  name-tag    = var.project
  cidr-prefix = var.cidr-prefix
  vpc-id      = module.network.vpc-id
}

module "extra-assosiations" {
  source = "./modules/extra-modules/assosiations"

  rt-id = module.network.public-route-table-id
  s1-id = module.extra-subnets.subnet1
  s2-id = module.extra-subnets.subnet2
  s3-id = module.extra-subnets.subnet3
  s4-id = module.extra-subnets.subnet4
}
