#################################
##			Variables		   ##
#################################
variable "access_key" {}
variable "secret_key" {}


#################################
##			Provider		   ##
#################################
provider "aws" {
	region = "us-east-1"
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}