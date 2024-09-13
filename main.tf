module "vpc_dev" {

  source       = "./vpc"
  env_name     = var.env_name
  subnets = var.vpc_subnets
}

module "mysql_cluster" {
 
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  source    = "./mysql_cluster" 
  name      = var.cluster_name
  network_id = module.vpc_dev.network_id
  ha        = var.ha 
  resource_preset_id = var.resource_preset_id
  environment = var.environment
  host_zone = var.host_zone
  host_zone_dynamic = var.host_zone_dynamic
  assign_public_ip = var.assign_public_ip
  disk_size = var.disk_size
  disk_type_id = var.disk_type_id
  
}

module "mysql_database" {
  source        = "./mysql_database"
  cluster_id    = module.mysql_cluster.mysql_cluster_id
  database_name = var.database_name
  user_name     = var.database_user_name
  user_password = var.user_password
  user_roles    = var.database_user_roles 
}

