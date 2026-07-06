env = "dev"

vpc_cidr = "10.0.0.0/16"
public_subnet = "10.0.1.0/24"

ecs_cpu    = 256
ecs_memory = 512

db_instance_class = "db.t3.micro"
db_storage        = 20
db_backup_retention = 3
db_deletion_protection = false
