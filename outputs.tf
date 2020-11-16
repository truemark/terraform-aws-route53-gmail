output "zone_id" {
  value = data.aws_route53_zone.selected.id
}

output "record_id" {
  value = aws_route53_record.mx.id
}
