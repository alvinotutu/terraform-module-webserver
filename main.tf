module "myapp-vpc" {
  source = "./modules/vpc"
}

module "myapp-subnet" {
    source = "./modules/subnet"
    vpc_id = module.myapp-vpc.vpc.id   
}

module "myapp-webserver" {
  source = "./modules/webserver"
  vpc_id = module.myapp-vpc.vpc.id
  subnet_id = module.myapp-subnet.pub_subnet_1.id
}