resource "azurerm_mssql_server" "sqlserver" {
    for_each                = var.module_sql_server
    name                    = each.value.server_name
    resource_group_name     = each.value.resource_group_name
    location                = each.value.location
    version                 = each.value.version
    administrator_login     = each.value.administrator_login
  administrator_login_password   = each.value.admin_password
  minimum_tls_version = each.value.minimum_tls_version

}

output "server_id" {
  value = azurerm_mssql_server.sqlserver.id
}