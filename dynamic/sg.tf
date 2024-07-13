resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "allowing 22,80,8080,3306 ports access"

  dynamic "ingress" {
    for_each = var.inbounce_rules
    content {
      from_port   = ingress.value["port"] #each.value[<key-name>]
      to_port     = ingress.value["port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  dynamic "egress" {
    for_each = var.outbounce_rules
    content {
      from_port   = egress.value["from_port"]
      to_port     = egress.value["from_port"]
      protocol    = egress.value["protocol"]
      cidr_blocks = egress.value["cidr_blocks"]
    }
  }
}
