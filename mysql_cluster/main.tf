resource "yandex_mdb_mysql_cluster" "this" {
  name       = var.name
  network_id = var.network_id
  version = "8.0"
  environment = var.environment 

  host {
    zone      = var.host_zone 
  }

  dynamic "host" {
    for_each = var.ha ? [1, 2] : [1]
    content {
      zone            = var.host_zone_dynamic 
      assign_public_ip = var.assign_public_ip # false
    }
  }

  resources {
    resource_preset_id = var.resource_preset_id 
    disk_size          = var.disk_size
    disk_type_id       = var.disk_type_id
  }
}