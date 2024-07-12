resource "aws_route53_record" "expense" {
  count   = 3
  zone_id = var.zone_id
  ttl     = 1
  name    = local.domain_name
  type    = "A"
  records = local.record_name
  #if records already exists
  allow_overwrite = true
}
