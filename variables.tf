###cloud vars

variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "username" {
  type    = string
  default = "ubuntu"
}

variable "ssh_public_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "env_name" {
  type    = string
  default = "development"
  description = "Environment name"
}

variable "vpc_subnets" {
  type = list
  description =  "VPC subnets"
} 

variable "cluster_name" {
  type    = string
  default = "example"
  description =  "Cluster name"
}

variable "ha"  {
  type    = bool
  default = true
  description = "HA cluster enable"
} 

variable "database_name" {
  type    = string
  default = "test"
  description =  "database_name"
}

variable "database_user_name" {
  type    = string
  default = "app"
  description =  "database user name"
}

variable "database_user_roles" {
  type = list(string)
  description =  "database_user_roles"
} 

variable "resource_preset_id" {
  type        = string
  description = "resource_preset_id"
}

variable "user_password" {
  type        = string
  description = "user_password"
}

variable "environment" {
  type        = string
  description = "environment"
}

variable "host_zone" {
  type        = string
  description = "host_zone"
}

variable "host_zone_dynamic" {
  type        = string
  description = "host_zone_dynamic"
}

variable "assign_public_ip" {
  type        = bool
  description = "assign_public_ip"
}

variable "disk_size" {
  type        = number
  description = "disk_size"
}

variable "disk_type_id" {
  type        = string
  description = "disk_type_id"
}