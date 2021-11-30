terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.67.0"
    }
  }
}


provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "My_server" {
  ami           = ""
  instance_type = "t2.micro"

  tags = {
    Name = "My_server"
  }
}