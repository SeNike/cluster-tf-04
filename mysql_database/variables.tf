variable "cluster_id" {
  description = "ID кластера"
  type        = string
}

variable "database_name" {
  description = "Имя базы данных"
  type        = string
}

variable "user_name" {
  description = "Имя пользователя"
  type        = string
}

variable "user_roles" {
  description = "Список ролей для пользователя базы данных"
  type        = list(string)
}


