resource "aws_instance" "Project" {
  for_each               = var.instance_names # each.key and each.value
  ami                    = data.aws_ami.aws_ami_info.id
  instance_type          = each.value
  vpc_security_group_ids = ["sg-04dae8a904672e07f"]
  tags = {
    Name   = each.key
    Module = each.key
  }
}

