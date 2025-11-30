variable "module_sql_db" {
  type = map(object({
    database_name = string
    max_size_gb   = number
  }))
}
variable "server_id" {
  type = string
}