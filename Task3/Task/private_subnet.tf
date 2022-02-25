resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.11.0/24"
}
resource "aws_route_table" "Private" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "PrivateRouteTable"
  }
}

resource "aws_route_table_association" "Private" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.Private.id
}
