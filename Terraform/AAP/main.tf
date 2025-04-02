provider "aws" {
  region = "us-east-1"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

data "aws_security_group" "selected" {
  id ="sg-0ce818c00d069223d"
}

resource "aws_instance" "example" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet_prv1}"
  security_groups = [data.aws_security_group.selected.id]
  key_name = "DJKEY"

  tags = {
        Name = "DJInstance1"
  }
}

resource "time_sleep" "instance" {
  create_duration = "2m"

  depends_on = [aws_instance.example]
}
