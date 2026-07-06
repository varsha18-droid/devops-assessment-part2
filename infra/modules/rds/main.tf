resource "aws_db_instance" "this" {
  identifier        = var.db_name
  engine            = "mysql"
  instance_class    = var.instance_class
  allocated_storage = var.storage

  db_name  = "appdb"
  username = "admin"
  password = var.password

  skip_final_snapshot     = var.skip_final_snapshot
  backup_retention_period = var.backup_retention
  deletion_protection     = var.deletion_protection
}
