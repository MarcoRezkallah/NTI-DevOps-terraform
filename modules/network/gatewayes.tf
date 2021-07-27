resource "aws_eip" "nat-gw-ip" {
  vpc = true

  tags = {
    "Name" = "${var.name-tag}-${var.env}-NAT-GW-IP"
  }
}

resource "aws_internet_gateway" "main-igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.name-tag}-${var.env}-Main-I-GW"
  }
}

resource "aws_nat_gateway" "main-ngw" {
  subnet_id     = aws_subnet.network.id
  allocation_id = aws_eip.nat-gw-ip.id

  tags = {
    Name = "${var.name-tag}-${var.env}-Main-NAT-GW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.main-igw]
}


