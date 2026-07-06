env = "prod"

vpc_cidr = "10.1.0.0/16"
public_subnet = "10.1.1.0/24"

ecs_cpu    = 1024
ecs_memory = 2048

db_instance_class = "db.t3.medium"
db_storage        = 100
db_backup_retention = 14
db_deletion_protection = true
