resource "aws_route53_record" "aws_r53" {
  for_each        = aws_instance.Project
  ttl             = 1
  zone_id         = var.zone_id
  name            = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}" #Name of Record eg: praveen.online
  type            = "A"
  records         = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] #ip_address
  allow_overwrite = true
}
