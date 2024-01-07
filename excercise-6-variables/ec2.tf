resource "aws_instance" "roboshop-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  

    tags = merge(var.tags, {Name = "Web"})
}


# 1. CMD (-var="key=value")
# 2. -var-file
# 3. terraform.tfvars
# 4. Env variables
# 5. none of the above provided it will consider default value
# 6. if default value is not provided it will prompt for user input