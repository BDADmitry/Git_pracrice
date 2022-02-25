resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.10.0/24"
  map_public_ip_on_launch = "true"
}

resource "aws_route_table" "Public" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "Public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.Public.id
}
