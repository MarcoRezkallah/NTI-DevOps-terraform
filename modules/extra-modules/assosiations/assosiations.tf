resource "aws_route_table_association" "extra1" {
  subnet_id      = var.s1-id
  route_table_id = var.rt-id
}
resource "aws_route_table_association" "extra2" {
  subnet_id      = var.s2-id
  route_table_id = var.rt-id
}
resource "aws_route_table_association" "extra3" {
  subnet_id      = var.s3-id
  route_table_id = var.rt-id
}
resource "aws_route_table_association" "extra4" {
  subnet_id      = var.s4-id
  route_table_id = var.rt-id
}
