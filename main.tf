provider "aws" {
  region = "us-east-1"
  profile = "aws_sso"
}
resource "aws_instance" "example" {
ami = "ami-0557a15b87f6559cf"
instance_type = "t2.micro"

tags = {
  Name = "terraform-example"
}
}