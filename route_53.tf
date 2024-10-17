# This resource creates a DNS 'A' record for the component in Route 53.
resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

