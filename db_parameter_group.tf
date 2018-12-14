resource "aws_db_parameter_group" "tf_pg" {
  name        = "tf-mysql8-pg"
  family      = "mysql8.0"
  description = "Managed by Terraform"

  parameter {
    name  = "time_zone"
    value = "Asia/Tokyo"
  }
}
