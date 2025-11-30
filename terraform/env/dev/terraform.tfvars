dev_rgs = {
  "rg1" = {
    resource_group_name = "dev-aks-rg"
    location            = "East US"
  }
}

dev_ask = {
  "aks1" = {
    cluster_name        = "dev-aks-cluster"
    location            = "East US"
    resource_group_name = "dev-aks-rg"
    node_count          = 3
    vm_size             = "Standard_DS2_v2"
    dns_prefix          = "devakscluster"
  }
}
dev_acr = {
  "acr1" = {
    acr_name            = "devcontainerregistry"
    location            = "East US"
    resource_group_name = "dev-aks-rg"
    sku                 = "Basic"
    admin_enabled       = true
  }
}

dev_sqlserver = {
  "sql1" = {
    database_name       = "sql-dev-todo-server"
    resource_group_name = "dev-aks-rg"
    admin_username      = "sqladminuser"
    admin_password      = "P@ssw0rd1234"
    location            = "East US"
    version             = "12.0"
    minimum_tls_version = "1.2"

  }
}

dev_sqldb = {
  "sqldb1" = {
    database_name = "dev-todo-database"
    collation     = "SQL_Latin1_General_CP1_CI_AS"
    max_size_gb   = 2
    sku_name      = "S0"
  }
}