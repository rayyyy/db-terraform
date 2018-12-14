variable "username" {}
variable "password" {}

resource "aws_db_instance" "db" {
  identifier              = "rainiero-db"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0.11"
  instance_class          = "db.t2.micro"
  storage_type            = "gp2"
  name                    = "rainiero_db"
  username                = "${var.username}"
  password                = "${var.password}"
  publicly_accessible     = true
  backup_retention_period = 1
  parameter_group_name    = "${aws_db_parameter_group.tf_pg.name}"
}
