module "resource_group" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../modules/subnets"
  subnets    = var.subnets
}