variable "dev_rgs" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "dev_ask" {
  type = map(object({
    cluster_name        = string
    location            = string
    resource_group_name = string
    node_count          = number
    vm_size             = string
    dns_prefix          = string
  }))
}

variable "dev_acr" {
  type = map(object({
    acr_name            = string
    location            = string
    resource_group_name = string
    sku                 = string
    admin_enabled       = bool
  }))
}
variable "dev_sqlserver" {
  type = map(object({
    database_name = string
    server_id     = string
    collation     = string
    max_size_gb   = number
    sku_name      = string
  }))
}
variable "dev_sqldb" {
  type = map(object({
    database_name = string
    server_id     = string
    collation     = string
    max_size_gb   = number
    sku_name      = string
  }))
}
variable "serverid" {
  type = string
}