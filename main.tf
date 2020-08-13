provider "aws" {
  region = "ap-southeast-1"
}

module "main_vpc" {
  source = "./vpc"
} 

module "web_server" {
  source = "./instance"
  vpc_id = module.main_vpc.vpc_id
  subnet_public_id = module.main_vpc.subnet_public_id
}

output "public_ip" {
  value = module.web_server.web_server_public_ip
}
