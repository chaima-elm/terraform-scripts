resource "aws_instance" "shamy-inst " {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "shamy-key"
  vpc_security_group_ids = ["sg-0d3bfc88b5b7b0b39"]
  tags = {
    Name    = "shamy-Instance"
    Project = "shamyy"
  }
}