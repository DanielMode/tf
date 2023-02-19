provider "aws" {
  region = "us-east-2"
  profile = "ssouser"
}
resource "aws_instance" "example" {
ami = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
}