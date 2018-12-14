resource "aws_db_subnet_group" "main" {
  name        = "tf_dbsubnet"
  description = "It is a DB subnet group on tf_vpc."
  subnet_ids  = ["${aws_subnet.private_db1.id}", "${aws_subnet.private_db2.id}"]

  tags {
    Name = "tf_dbsubnet"
  }
}
