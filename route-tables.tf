resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-igw.id
  }

  tags = {
    Name = "${var.project}-${var.environment}-Public-RT"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.main-ngw.id
  }

  tags = {
    Name = "${var.project}-${var.environment}-Private-RT"
  }
}

resource "aws_route_table_association" "newtwork" {
  subnet_id      = aws_subnet.network.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-a" {
  subnet_id      = aws_subnet.public-a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-b" {
  subnet_id      = aws_subnet.public-b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "online-private-a" {
  subnet_id      = aws_subnet.online-private-a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "online-private-b" {
  subnet_id      = aws_subnet.online-private-b.id
  route_table_id = aws_route_table.private.id
}

