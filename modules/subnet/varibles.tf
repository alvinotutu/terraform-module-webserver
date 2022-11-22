variable "vpc_id" {}

variable "ZONE1" {
  default = "us-east-1a"
}
variable "ZONE2" {
  default = "us-east-1b"
}
variable "ZONE3" {
  default = "us-east-1c"
}

variable "internet" {
  default = "0.0.0.0/0"
}

variable "cidr_pub_1" {
  default = "10.0.1.0/24"
}

variable "cidr_pub_2" {
  default = "10.0.2.0/24"
}

variable "cidr_pub_3" {
  default = "10.0.3.0/24"
}

variable "cidr_priv_1" {
  default = "10.0.4.0/24"
}

variable "cidr_priv_2" {
  default = "10.0.5.0/24"
}

variable "cidr_priv_3" {
  default = "10.0.6.0/24"
}

variable "env_prefix" {
  default = "dove"
}