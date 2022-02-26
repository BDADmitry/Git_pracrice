resource "aws_instance" "web" {
  ami                    = var.UbuntuAMI // Ubuntu Server 20.04 LTS
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = file("webpage.sh")
  private_ip = "${var.PrivateIpUbuntu}"
  tags = {
    Name = "WebServer with my page"
  }
}

resource "aws_security_group" "web" {

  name        = "WebServer"
  description = "Security Group for my WebServer"

  vpc_id = aws_vpc.myvpc.id
  

  dynamic "ingress" {
    for_each = ["80", "443", "22"]
    content {
      description = "Allow port HTTP"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  ingress {
    description = "Allow port ICMP"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Ubuntu_ICMP_HTP_HTTP_SSH"
  }
}
