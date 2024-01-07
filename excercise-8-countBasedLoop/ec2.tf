resource "aws_instance" "roboshop-instance" {
    count = length(var.roboshop_instances)
    ami = var.ami_id
    instance_type = (var.roboshop_instances[count.index] == "mongodb") ? "t2.small" : "t3.micro" 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = merge(var.tags, {Name = var.roboshop_instances[count.index]})
}
