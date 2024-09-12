variable "name" {
  description = "Имя кластера"
  type        = string
}

variable "network_id" {
  description = "ID сети Yandex Cloud"
  type        = string
}

variable "ha" {
  description = "HA Cluster (true - 2 nodes, false - 1 node)"
  type        = bool
  default     = false
}

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

