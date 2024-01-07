resource "aws_route53_record" "roboshop-dns-records" {
#   count = length(var.roboshop_instances)
  count = length(aws_instance.roboshop-instances)
  zone_id = var.route53_zone_id
  name    = "${var.roboshop_instances[count.index]}.${var.domain-name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop-instances[count.index].tags.Name == "web" ? 
        aws_instance.roboshop-instances[count.index].public_ip : 
        aws_instance. roboshop-instances[count.index].private_ip
    ]
}