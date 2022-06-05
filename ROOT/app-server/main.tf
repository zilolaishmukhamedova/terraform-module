module "vpc" {
  source = "../../CHILD/VPC"
}

module "vpc-dev" {
  source = "../../CHILD/VPC"
  vpc_cidr = "20.0.0.0/16"
  pub_cidr = "20.0.1.0/24"
  prv_cidr = "20.0.2.0/24"
  tag = "dev"
}

module "app-server" {
  source = "git::https://github.com/zilolaishmukhamedova/terraform-module.git//CHILD/EC2"
  #source = "git@github.com:zilolaishmukhamedova/terraform-module//CHILD/EC2"
  #source = "../../CHILD/EC2"
}