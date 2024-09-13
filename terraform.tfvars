env_name     = "production"

vpc_subnets = [
    { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
    { zone = "ru-central1-b", cidr = "10.0.2.0/24" },
  ]

# Cluster

cluster_name           = "example"  
ha                     = true
resource_preset_id     = "s2.micro"
environment            = "PRODUCTION"
host_zone              = "ru-central1-a"
host_zone_dynamic      = "ru-central1-b"
assign_public_ip       = false
disk_size              = 20
disk_type_id           = "network-hdd"


# Database

database_name          = "test"
database_user_name     = "app"
database_user_roles    = ["ALL"]  
user_password          = "db_password"