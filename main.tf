provider "aws" {
    profile = "terraform"
    region = "ap-northeast-1"
}

resource "aws_instance" "hello_world" {
  ami = "ami-0ab3794db9457b60a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorldTag"
  }

  user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.12
systemctl start nginx
EOF
}
