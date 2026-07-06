provider "aws" {
  region = var.region
}

module "network" {
  source = "../../modules/network"

  cidr                = var.vpc_cidr
  name                = "dev-vpc"
  public_subnet_cidr  = var.public_subnet
  az                  = "ap-south-1a"
}

module "ecs" {
  source = "../../modules/ecs"

  cluster_name = "dev-cluster"
  task_family  = "dev-task"
  cpu          = var.ecs_cpu
  memory       = var.ecs_memory
  image        = "nginx:latest"
}

module "rds" {
  source = "../../modules/rds"

  db_name              = "devdb"
  instance_class       = var.db_instance_class
  storage              = var.db_storage
  password             = "DevPassword123!"
  backup_retention     = var.db_backup_retention
  deletion_protection  = var.db_deletion_protection
  skip_final_snapshot  = true
}
