locals {
  instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
  domain_name   = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  record_name   = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
}
