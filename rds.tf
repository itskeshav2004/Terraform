resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  db_name              = "mydb"
  username             = "admin"
  password             = "${file("../rds_pass.txt")}"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = "true"
}
