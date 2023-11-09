provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami                         = "ami-0e01e66dacaf1454d"
  instance_type               = "t2.micro"
  key_name                    = "terraform"
  subnet_id                   = "subnet-01358f150408fa491"
  associate_public_ip_address = true

  tags = {
    Name = "my-example-instance"
  }
}
