provider "aws" {
region = "us-west-2"
access_key = "AKIA2H7SA6LG2XDEIFKP"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-06e85d4c3149db26a"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}

