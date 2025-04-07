resource "aws_instance" "nginxserver" {
  ami           = "ami-071226ecf16aa7d96"
  instance_type = "t3.nano"
  subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [ aws_security_group.nginx-sg]
  associate_public_ip_address = true

  user_data = <<-EDF
    #!/bin/bash
    sudo yum install nginx -y
    sudo systemctl11 start nginx
    EDF

  tags = {
    Name = "nginxserver"
  }
}