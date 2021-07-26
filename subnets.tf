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
    Name = "${var.project}-${var.environment}-Public-${var.az2}-Subnet"
  }
}

resource "aws_subnet" "network" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.200.0/24"

  tags = {
    Name = "${var.project}-${var.environment}-Network-Subnet"
  }
}

resource "aws_subnet" "online-private-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.101.0/24"
  availability_zone = "${var.region}-${var.az1}"

  tags = {
    Name = "${var.project}-${var.environment}-Online-Private-${var.az1}-Subnet"
  }
}

resource "aws_subnet" "online-private-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.102.0/24"
  availability_zone = "${var.region}-${var.az2}"

  tags = {
    Name = "${var.project}-${var.environment}-Online-Private-${var.az2}-Subnet"
  }
}


resource "aws_subnet" "offline-private-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.51.0/24"
  availability_zone = "${var.region}-${var.az1}"

  tags = {
    Name = "${var.project}-${var.environment}-Offline-Private-${var.az1}-Subnet"
  }
}

resource "aws_subnet" "offline-private-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${var.cidr-prefix}.52.0/24"
  availability_zone = "${var.region}-${var.az2}"

  tags = {
    Name = "${var.project}-${var.environment}-Offline-Private-${var.az2}-Subnet"
  }
}