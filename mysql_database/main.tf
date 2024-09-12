resource "yandex_mdb_mysql_database" "db" {
  cluster_id = var.cluster_id
  name       = var.database_name
}

resource "yandex_mdb_mysql_user" "user" {
  cluster_id = var.cluster_id
  name       = var.user_name
  password   = "db_password"

  permission {
    database_name = var.database_name
    roles         = var.user_roles  # Используем переменную для ролей
  }
  depends_on = [yandex_mdb_mysql_database.db]
}
