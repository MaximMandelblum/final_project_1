# resource "aws_route53_zone" "private" {
#   name = "test.com"

#   vpc {
#     vpc_id = module.vpc.vpc_id
#   }
# }

# resource "aws_route53_record" "kibana" {
#   zone_id = aws_route53_zone.private.zone_id
#   name    = "kibana.${aws_route53_zone.private.name}"
#   type    = "A"
#   ttl     = "60"
#   records = [aws_instance.elk_server[0].private_ip, aws_instance.mysql_server[0].private_ip]
# }