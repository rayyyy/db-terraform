resource "aws_route_table" "public-route" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "puclic-1a" {
  subnet_id      = "${aws_subnet.private_db1.id}"
  route_table_id = "${aws_route_table.public-route.id}"
}

resource "aws_route_table_association" "puclic-1c" {
  subnet_id      = "${aws_subnet.private_db2.id}"
  route_table_id = "${aws_route_table.public-route.id}"
}
