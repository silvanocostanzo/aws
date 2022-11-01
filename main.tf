terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = "aws"
  security_groups = [ "launch-wizard-1" ]
  tags = {
    Name = "TFSSHInstance"
  }
}

