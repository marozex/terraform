## conf
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

## provider
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

## variables
variable "project" {
  type = string
}

variable "environment" {
  type = string
}

## EC2 AMI
# resource "aws_instance" "hello_world" {
#   ami           = "ami-0ab3794db9457b60a"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorldTag"
#   }
# }
