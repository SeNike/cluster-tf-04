resource "yandex_mdb_mysql_cluster" "this" {
  name       = var.name
  network_id = var.network_id
  version = "8.0"
 
  environment = "PRODUCTION"

  host {
    zone      = "ru-central1-a"
    #subnet_id = "your-subnet-id"
  }

  dynamic "host" {
    for_each = var.ha ? [1, 2] : [1]
    content {
      zone            = "ru-central1-a"
      #subnet_id       = "your-subnet-id"
      assign_public_ip = false
    }
  }

  database {
    name = "default_db"
  }

  resources {
    resource_preset_id = "s2.micro"
    disk_size          = 20
    disk_type_id       = "network-hdd"
  }

  user {
    name     = "dbuser"
    password = "db_password"
    permission {
      database_name = "default_db"
    }
  }
}