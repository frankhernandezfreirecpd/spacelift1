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

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.2.0.0/16"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
