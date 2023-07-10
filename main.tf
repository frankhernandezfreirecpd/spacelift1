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
    Name = "tf-example"
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.large"

  tags = {
    Name = "app-server"
  }
}
