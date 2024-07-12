resource "aws_route53_record" "expense" {
  count   = 3
  zone_id = var.zone_id
  ttl     = 1
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  #if records already exists
  allow_overwrite = true
}
