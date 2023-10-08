module "vpc" {
  source = "./module/vpc"
  #name   = "dev-vpc-network"
}

module "subnet1" {
  source      = "./module/subnet"
  name        = "subnet11"
  vpc_id      = module.vpc.network_id
  region      = "us-west1"
  subnet_cidr = "10.160.10.0/24"
}

module "subnet2" {
  source      = "./module/subnet"
  name        = "subnet12"
  vpc_id      = module.vpc.network_id
  region      = "asia-south2"
  subnet_cidr = "10.10.10.0/24"
}

module "vm1" {
  source        = "./module/vm_instance"
  network_id    = module.vpc.network_id
  subnet_id     = module.subnet1.subnet_id
  zone          = "us-west1-a"
  instance_name = "vm-instance-1"

  disk_name = "disk-attach1"
  disk_type = "pd-ssd"
  disk_zone = "us-west1-a"
  disk_size = "20"
}

module "vm2" {
  source        = "./module/vm_instance"
  network_id    = module.vpc.network_id
  subnet_id     = module.subnet2.subnet_id
  zone          = "asia-south2-a"
  instance_name = "vm-instance-2"

  disk_name = "disk-attach2"
  disk_type = "pd-ssd"
  disk_zone = "asia-south2-a"
  disk_size = "30"
}
