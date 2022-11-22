resource "aws_subnet" "dove-pub-1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_pub_1
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = {
    Name = "${var.env_prefix}-pub-1"
  }
}

resource "aws_subnet" "dove-pub-2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_pub_2
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = {
    Name = "${var.env_prefix}-pub-2"
  }
}

resource "aws_subnet" "dove-pub-3" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_pub_3
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE3
  tags = {
    Name = "${var.env_prefix}-pub-3"
  }
}

resource "aws_subnet" "dove-priv-1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_priv_1
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = {
    Name = "${var.env_prefix}-priv-1"
  }
}

resource "aws_subnet" "dove-priv-2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_priv_2
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = {
    Name = "${var.env_prefix}-priv-2"
  }
}

resource "aws_subnet" "dove-priv-3" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_priv_3
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE3
  tags = {
    Name = "${var.env_prefix}-priv-3"
  }
}

resource "aws_internet_gateway" "dove-IGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.env_prefix}-IGW"
  }
}

resource "aws_route_table" "dove-pub-RT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = var.internet
    gateway_id = aws_internet_gateway.dove-IGW.id
  }
  tags = {
    Name = "${var.env_prefix}-pub-RT"
  }
}

resource "aws_route_table_association" "dove-pub-1-a" {
  subnet_id      = aws_subnet.dove-pub-1.id
  route_table_id = aws_route_table.dove-pub-RT.id
}

resource "aws_route_table_association" "dove-pub-1-b" {
  subnet_id      = aws_subnet.dove-pub-2.id
  route_table_id = aws_route_table.dove-pub-RT.id
}

resource "aws_route_table_association" "dove-pub-1-c" {
  subnet_id      = aws_subnet.dove-pub-3.id
  route_table_id = aws_route_table.dove-pub-RT.id
}