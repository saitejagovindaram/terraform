resource "aws_instance" "roboshop-instance" {
    ami = data.aws_ami.centos8.id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  

    tags = merge(var.tags, {Name = "Web"})
}
