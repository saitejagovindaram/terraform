resource "aws_instance" "roboshop-instance" {
    ami = var.ami_id
    instance_type = (var.instance_Name == "mongodb") ? "t2.small" : "t3.micro" 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = merge(var.tags, {Name = var.instance_Name})
}
