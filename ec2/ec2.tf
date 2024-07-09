resource "aws_security_group" "aws_security" {

  name        = "allow ssh"
  description = "Allowing SSH port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "allow ssh"
    CreatedBy = "Praveen N"
  }
}

resource "aws_instance" "db" {
  ami                    = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = [aws_security_group.aws_security.id]
  instance_type          = "t2.micro"

  tags = {
    Name      = "db"
    CreatedBy = "Praveen"
  }
}
