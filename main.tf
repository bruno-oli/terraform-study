terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fe18bc3cfa53a248"
  instance_type = "t3.micro"
  key_name = "iac"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}