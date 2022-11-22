output "Public_IP" {
  value = module.myapp-webserver.instance.public_ip
}

output "Private_IP" {
  value = module.myapp-webserver.instance.private_ip
}

output "aws_ami_id" {
    value = module.myapp-webserver.instance.ami
}