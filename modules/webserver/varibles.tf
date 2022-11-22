variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}
# variable "ZONE2" {
#   default = "us-east-1b"
# }
# variable "ZONE3" {
#   default = "us-east-1c"
#}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0b0dcb5067f052a63"
    us-east-2 = "ami-0beaa649c482330f7"
  }
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  default = "dovekey.pub"
}

variable "PRIV_KEY" {
  default = "dovekey"
}

variable "MYIP" {
  default = "197.210.0.0/16"
}

variable "internet" {
  default = "0.0.0.0/0"
}

variable "inst_type" {
  default = "t2.micro"
}

variable "env_prefix" {
  default = "dove"
}

variable "vpc_id" {}
variable "subnet_id" {}