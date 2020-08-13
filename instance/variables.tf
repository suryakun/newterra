variable "vpc_id" { }

variable "subnet_public_id" { }

variable "public_key_path" {
  description = "public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "instance_ami" {
  description = "AMI for ec2 instance"
  default = "ami-063e3af9d2cc7fe94"
}

variable "instance_type" {
  description = "type of aws instance"
  default = "t2.micro"
}

variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}
