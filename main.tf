provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-091dccf4e2d272bae"
instance_type = "t2.medium"
key_name = "devopsbyraham"
vpc_security_group_ids = ["sg-06087f584465ad8c2"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
