provider "aws" {
region = "us-west-2"
access_key = "AKIA2H7SA6LGYNYM5LG6"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-06e85d4c3149db26a"
instance_type = "t2.micro"
key_name = "keys"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}

