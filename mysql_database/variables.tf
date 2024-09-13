variable "cluster_id" {
  description = "cluster ID"
  type        = string
}

variable "database_name" {
  description = "Database name"
  type        = string
}

variable "user_name" {
  description = "User name"
  type        = string
}

variable "user_roles" {
  description = "User roles"
  type        = list(string)
}

variable "user_password" {
  description = "User password"
  type        = string
}


