data "aws_route53_zone" "selected" {
  name = var.zone_name
  private_zone = false
}

resource "aws_route53_record" "mx" {
  zone_id = data.aws_route53_zone.selected.id
  type = "MX"
  name = ""
  ttl = var.ttl
  records = [
    "10 ASPMX.L.GOOGLE.COM",
    "20 ALT1.ASPMX.L.GOOGLE.COM",
    "30 ALT2.ASPMX.L.GOOGLE.COM",
    "40 ASPMX2.GOOGLEMAIL.COM",
    "50 ASPMX3.GOOGLEMAIL.COM"
  ]
}

resource "aws_route53_record" "spf" {
  name = ""
  type = "TXT"
  ttl = var.spf_ttl
  zone_id = data.aws_route53_zone.selected.id
  records = [var.spf_value]
}
