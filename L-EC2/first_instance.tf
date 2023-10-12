provider "aws" {
  region = "us-east-2"
  #   access_key = ""
  #   secret_key = ""	
}

resource "aws_instance" "intro" {
  ami                    = "ami-03657b56516ab7912"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "shamy-key"
  vpc_security_group_ids = ["sg-0d3bfc88b5b7b0b39"]
  tags = {
    Name    = shamy-Instance"
    Project = "shamy"
  }
}