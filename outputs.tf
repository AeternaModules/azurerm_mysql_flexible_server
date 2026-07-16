output "mysql_flexible_servers_id" {
  description = "Map of id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_flexible_servers_administrator_login" {
  description = "Map of administrator_login values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_login if v.administrator_login != null && length(v.administrator_login) > 0 }
}
output "mysql_flexible_servers_administrator_password" {
  description = "Map of administrator_password values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password if v.administrator_password != null && length(v.administrator_password) > 0 }
  sensitive   = true
}
output "mysql_flexible_servers_administrator_password_wo" {
  description = "Map of administrator_password_wo values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password_wo if v.administrator_password_wo != null && length(v.administrator_password_wo) > 0 }
}
output "mysql_flexible_servers_administrator_password_wo_version" {
  description = "Map of administrator_password_wo_version values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password_wo_version if v.administrator_password_wo_version != null }
}
output "mysql_flexible_servers_backup_retention_days" {
  description = "Map of backup_retention_days values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.backup_retention_days if v.backup_retention_days != null }
}
output "mysql_flexible_servers_create_mode" {
  description = "Map of create_mode values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.create_mode if v.create_mode != null && length(v.create_mode) > 0 }
}
output "mysql_flexible_servers_customer_managed_key" {
  description = "Map of customer_managed_key values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.customer_managed_key if v.customer_managed_key != null && length(v.customer_managed_key) > 0 }
}
output "mysql_flexible_servers_delegated_subnet_id" {
  description = "Map of delegated_subnet_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.delegated_subnet_id if v.delegated_subnet_id != null && length(v.delegated_subnet_id) > 0 }
}
output "mysql_flexible_servers_fqdn" {
  description = "Map of fqdn values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "mysql_flexible_servers_geo_redundant_backup_enabled" {
  description = "Map of geo_redundant_backup_enabled values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.geo_redundant_backup_enabled if v.geo_redundant_backup_enabled != null }
}
output "mysql_flexible_servers_high_availability" {
  description = "Map of high_availability values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.high_availability if v.high_availability != null && length(v.high_availability) > 0 }
}
output "mysql_flexible_servers_identity" {
  description = "Map of identity values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "mysql_flexible_servers_location" {
  description = "Map of location values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "mysql_flexible_servers_maintenance_window" {
  description = "Map of maintenance_window values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.maintenance_window if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "mysql_flexible_servers_name" {
  description = "Map of name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mysql_flexible_servers_point_in_time_restore_time_in_utc" {
  description = "Map of point_in_time_restore_time_in_utc values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.point_in_time_restore_time_in_utc if v.point_in_time_restore_time_in_utc != null && length(v.point_in_time_restore_time_in_utc) > 0 }
}
output "mysql_flexible_servers_private_dns_zone_id" {
  description = "Map of private_dns_zone_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.private_dns_zone_id if v.private_dns_zone_id != null && length(v.private_dns_zone_id) > 0 }
}
output "mysql_flexible_servers_public_network_access" {
  description = "Map of public_network_access values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.public_network_access if v.public_network_access != null && length(v.public_network_access) > 0 }
}
output "mysql_flexible_servers_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "mysql_flexible_servers_replica_capacity" {
  description = "Map of replica_capacity values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.replica_capacity if v.replica_capacity != null }
}
output "mysql_flexible_servers_replication_role" {
  description = "Map of replication_role values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.replication_role if v.replication_role != null && length(v.replication_role) > 0 }
}
output "mysql_flexible_servers_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "mysql_flexible_servers_sku_name" {
  description = "Map of sku_name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "mysql_flexible_servers_source_server_id" {
  description = "Map of source_server_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.source_server_id if v.source_server_id != null && length(v.source_server_id) > 0 }
}
output "mysql_flexible_servers_storage" {
  description = "Map of storage values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.storage if v.storage != null && length(v.storage) > 0 }
}
output "mysql_flexible_servers_tags" {
  description = "Map of tags values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mysql_flexible_servers_version" {
  description = "Map of version values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.version if v.version != null && length(v.version) > 0 }
}
output "mysql_flexible_servers_zone" {
  description = "Map of zone values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

