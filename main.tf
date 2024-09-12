module "vpc_dev" {

  source       = "./vpc"
  env_name     = "production"
  
  subnets = [
    { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
    { zone = "ru-central1-b", cidr = "10.0.2.0/24" },
  ]
}

module "mysql_cluster" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  source    = "./mysql_cluster"
  name      = "example"
  network_id = module.vpc_dev.network_id
  ha        = true # Сначала создаем кластер с одним хостом
}

module "mysql_database" {
  source        = "./mysql_database"
  cluster_id    = module.mysql_cluster.mysql_cluster_id
  database_name = "test"
  user_name     = "app"
  user_roles    = ["ALL"]  # Задаем роли для пользователя
}
