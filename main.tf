terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-097d5b19d4f1a7d1b"
  instance_type = "t2.micro"

  tags = {
    Name = "app-server"
  }
}
