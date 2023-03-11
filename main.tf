provider "aws" {
  region = "us-east-1"
  profile = "aws_sso"
}
resource "aws_instance" "example" {
  ami = "ami-006f0be65e536ded6"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  

  tags = {
    Name = "terraform-example"
}
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}