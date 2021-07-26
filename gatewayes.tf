resource "aws_eip" "nat-gw-ip" {
  tags = {
    "Name" = "NAT-GW-IP"
  }
}

resource "aws_internet_gateway" "main-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Main-I-GW"
  }
}

resource "aws_nat_gateway" "main-ngw" {
  subnet_id     = aws_subnet.main.id
  allocation_id = aws_eip.nat-gw-ip.id

  tags = {
    Name = "Main-NAT-GW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.main-igw]
}


