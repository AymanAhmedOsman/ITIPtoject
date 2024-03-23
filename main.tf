module "network" {
    source = "./network"
    region = var.region
    cidr = var.vpc_cidr
    public_subnet1_cidr = var.public_subnet1_cidr
    public_subnet2_cidr = var.public_subnet2_cidr
    privat_subnet1_cidr = var.privat_subnet1_cidr
    privat_subnet2_cidr = var.privat_subnet2_cidr

}