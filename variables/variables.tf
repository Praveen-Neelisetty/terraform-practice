variable "ami_id" {
  type    = string
  default = "ami-041e2ea9402c46c32"
}

variable "ingress_from_port" {
  type    = number
  default = 22
}

variable "ingress_to_port" {
  type        = string
  description = "ingress to port for security group"
}

variable "ingress_protocol" {
  type = string
  #default = "tcp"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags_aws_sg" {
  default = {
    Name        = "aws security group"
    CreatedBy   = "Praveen"
    Project     = "Terraform"
    Environment = "Development"
    Module      = "DB_server"
  }
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
