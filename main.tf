terraform {
required_version = ">= 0.13" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    
      aws = "= 4.22.0"
    
  } 
}  
# Provider Block
provider "aws" {
  region = var.aws_region
  profile = "saml"
}

resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.aws_instance_type
  user_data = file("${path.module}/app1-install.sh")
  //security_groups = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  tags = {
    "Name" = "EC2 Demo"
  }
}

