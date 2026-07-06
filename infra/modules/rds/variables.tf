variable "instance_class" {
  type = string
}

variable "backup_retention" {
  type = number
}

variable "deletion_protection" {
  type = bool
}

variable "db_subnet_group_name" {
  type = string
}

variable "rds_security_group_id" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
}
