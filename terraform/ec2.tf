resource "aws_instance" "web_server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.aws_sg.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  user_data                   = file("script.sh")

  tags = var.tags
}