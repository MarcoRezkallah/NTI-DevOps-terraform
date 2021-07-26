resource "aws_subnet" "public-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.201.0/24"
  availability_zone = "${var.region}-${var.az1}"

  tags = {
    Name = "${var.project}-${var.environment}-Public-${var.az1}-Subnet"
  }
}

resource "aws_subnet" "public-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.202.0/24"
  availability_zone = "${var.region}-${var.az2}"

  tags = {
    Name = "${var.project}-${var.environment}-Public-${var.az1}-Subnet"
  }
}
