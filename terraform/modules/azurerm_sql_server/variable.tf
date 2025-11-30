variable "module_sql_server" {
  type = map(object({
    database_name = string
    server_id     = string
    collation     = string
    max_size_gb   = number
    sku_name      = string 
  }))
}