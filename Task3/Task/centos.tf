resource "aws_instance" "centos" {
  ami                    = "ami-08b6d44b4f6f7b279" // Amazon CentOS7
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.centos.id]
  subnet_id              = aws_subnet.private_subnet.id
  tags = {
    Name = "CentOS"
  }
}

resource "aws_security_group" "centos" {

  name        = "CentOS-SG"
  description = "Security Group for CentOS"

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
    Name = "Security Group for CentOS"
  }
}
