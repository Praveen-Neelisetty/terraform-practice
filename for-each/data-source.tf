data "aws_ami" "aws_ami_info" {
  most_recent = true
  owners      = [973714476881]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "vpc_security_group_ids" "default_aws_vpc" {
  default = true
}
