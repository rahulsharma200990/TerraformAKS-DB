module "rg" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.dev_rgs
}

module "aks" {
  source     = "../../modules/azurerm_k8s_cluster"
  module_aks = var.dev_ask
  depends_on = [module.rg]
}

module "acr" {
  source     = "../../modules/azurerm_continer_registry"
  module_acr = var.dev_acr
  depends_on = [module.rg]
}

module "sqlserver" {
  source            = "../../modules/azurerm_sql_server"
  module_sql_server = var.dev_sqlserver
  depends_on        = [module.rg]
}
module "sqldb" {

  source        = "../../modules/azurerm_sql_db"
  module_sql_db = var.dev_sqldb
  server_id     = var.serverid
  depends_on    = [module.sqlserver]
}