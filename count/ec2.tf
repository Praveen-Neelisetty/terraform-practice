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
  count                  = length(var.instance_name)
  ami                    = "ami-041e2ea9402c46c32"
  vpc_security_group_ids = [aws_security_group.aws_security.id]
  instance_type          = var.instance_name == "db" ? "t2.micro" : "t3.micro"

  tags = {
    Name      = var.instance_name[count.index]
    CreatedBy = "Praveen"
  }
}
