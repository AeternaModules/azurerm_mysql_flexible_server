output "mysql_flexible_servers_administrator_login" {
  description = "Map of administrator_login values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_login }
}
output "mysql_flexible_servers_administrator_password" {
  description = "Map of administrator_password values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password }
  sensitive   = true
}
output "mysql_flexible_servers_administrator_password_wo" {
  description = "Map of administrator_password_wo values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password_wo }
}
output "mysql_flexible_servers_administrator_password_wo_version" {
  description = "Map of administrator_password_wo_version values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.administrator_password_wo_version }
}
output "mysql_flexible_servers_backup_retention_days" {
  description = "Map of backup_retention_days values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.backup_retention_days }
}
output "mysql_flexible_servers_create_mode" {
  description = "Map of create_mode values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.create_mode }
}
output "mysql_flexible_servers_customer_managed_key" {
  description = "Map of customer_managed_key values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.customer_managed_key }
}
output "mysql_flexible_servers_delegated_subnet_id" {
  description = "Map of delegated_subnet_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.delegated_subnet_id }
}
output "mysql_flexible_servers_fqdn" {
  description = "Map of fqdn values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.fqdn }
}
output "mysql_flexible_servers_geo_redundant_backup_enabled" {
  description = "Map of geo_redundant_backup_enabled values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.geo_redundant_backup_enabled }
}
output "mysql_flexible_servers_high_availability" {
  description = "Map of high_availability values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.high_availability }
}
output "mysql_flexible_servers_identity" {
  description = "Map of identity values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.identity }
}
output "mysql_flexible_servers_location" {
  description = "Map of location values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.location }
}
output "mysql_flexible_servers_maintenance_window" {
  description = "Map of maintenance_window values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.maintenance_window }
}
output "mysql_flexible_servers_name" {
  description = "Map of name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.name }
}
output "mysql_flexible_servers_point_in_time_restore_time_in_utc" {
  description = "Map of point_in_time_restore_time_in_utc values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.point_in_time_restore_time_in_utc }
}
output "mysql_flexible_servers_private_dns_zone_id" {
  description = "Map of private_dns_zone_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.private_dns_zone_id }
}
output "mysql_flexible_servers_public_network_access" {
  description = "Map of public_network_access values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.public_network_access }
}
output "mysql_flexible_servers_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.public_network_access_enabled }
}
output "mysql_flexible_servers_replica_capacity" {
  description = "Map of replica_capacity values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.replica_capacity }
}
output "mysql_flexible_servers_replication_role" {
  description = "Map of replication_role values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.replication_role }
}
output "mysql_flexible_servers_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.resource_group_name }
}
output "mysql_flexible_servers_sku_name" {
  description = "Map of sku_name values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.sku_name }
}
output "mysql_flexible_servers_source_server_id" {
  description = "Map of source_server_id values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.source_server_id }
}
output "mysql_flexible_servers_storage" {
  description = "Map of storage values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.storage }
}
output "mysql_flexible_servers_tags" {
  description = "Map of tags values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.tags }
}
output "mysql_flexible_servers_version" {
  description = "Map of version values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.version }
}
output "mysql_flexible_servers_zone" {
  description = "Map of zone values across all mysql_flexible_servers, keyed the same as var.mysql_flexible_servers"
  value       = { for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : k => v.zone }
}

