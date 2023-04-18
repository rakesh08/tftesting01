
// aws_security_group.allow_ssh.id
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh-sg01"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description      = "ssh from internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "sg01-demo"
  }
}


// aws_security_group.allow_web.id
resource "aws_security_group" "allow_web" {
  name        = "allow_web-sg02"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description      = "http from internet"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "sg02-demo"
  }
}
