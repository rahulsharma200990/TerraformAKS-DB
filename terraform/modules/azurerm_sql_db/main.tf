resource "azurerm_mssql_database" "sql_db" {
    for_each            = var.module_sql_db
    name                = each.value.database_name
    server_id           = var.server_id
    collation           = each.value.collation
    max_size_gb        = each.value.max_size_gb
    sku_name           = each.value.sku_name
}