resource "aws_security_group" "aws_security" {

  name        = "aws_security"
  description = "aws security group for project"

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags_aws_sg
}

resource "aws_instance" "aws_instance_for_DB" {
  count                  = 2
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.aws_security.id]
  tags = {
    Name        = "instance EC2"
    CreatedBy   = "Praveen"
    Environment = "Development"
    Module      = "DB module"
    Project     = "Terraform"
  }
}


