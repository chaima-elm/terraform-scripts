resource "aws_key_pair" "shamy-key" {
  key_name   = "shamyskey"
  public_key = file("shamy-key.pub")
}

resource "aws_instance" "shamy-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.shamy-key.key_name
  vpc_security_group_ids = ["sg-0d3bfc88b5b7b0b39"]
  tags = {
    Name    = "shamy-Instance"
    Project = "shamiaa"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {

    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("shamy-key")
    host        = self.public_ip
  }
}