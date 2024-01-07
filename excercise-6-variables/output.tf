output "instance_info" {
  value = aws_instance.roboshop-instance
}

output "sg_info" {
  value = aws_security_group.roboshop_sg
}