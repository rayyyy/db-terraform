resource "aws_security_group" "db" {
  name        = "db_server"
  description = "It is a security group on db of tf_vpc."
  vpc_id      = "${aws_vpc.tf_vpc.id}"

  tags {
    Name = "tf_db"
  }
}

resource "aws_security_group_rule" "db" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.db.id}"
}
