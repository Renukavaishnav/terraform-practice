terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myserver" {
  ami           = "ami-071226ecf16aa7d96"
  instance_type = "t3.nano"

  tags = {
    Name = "SampleServer"
  }
}