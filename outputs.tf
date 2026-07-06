output "mysql_flexible_servers" {
  description = "All mysql_flexible_server resources"
  value       = azurerm_mysql_flexible_server.mysql_flexible_servers
  sensitive   = true
}
output "mysql_flexible_servers_administrator_login" {
  description = "List of administrator_login values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.administrator_login]
}
output "mysql_flexible_servers_administrator_password" {
  description = "List of administrator_password values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.administrator_password]
  sensitive   = true
}
output "mysql_flexible_servers_administrator_password_wo" {
  description = "List of administrator_password_wo values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.administrator_password_wo]
}
output "mysql_flexible_servers_administrator_password_wo_version" {
  description = "List of administrator_password_wo_version values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.administrator_password_wo_version]
}
output "mysql_flexible_servers_backup_retention_days" {
  description = "List of backup_retention_days values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.backup_retention_days]
}
output "mysql_flexible_servers_create_mode" {
  description = "List of create_mode values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.create_mode]
}
output "mysql_flexible_servers_customer_managed_key" {
  description = "List of customer_managed_key values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.customer_managed_key]
}
output "mysql_flexible_servers_delegated_subnet_id" {
  description = "List of delegated_subnet_id values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.delegated_subnet_id]
}
output "mysql_flexible_servers_fqdn" {
  description = "List of fqdn values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.fqdn]
}
output "mysql_flexible_servers_geo_redundant_backup_enabled" {
  description = "List of geo_redundant_backup_enabled values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.geo_redundant_backup_enabled]
}
output "mysql_flexible_servers_high_availability" {
  description = "List of high_availability values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.high_availability]
}
output "mysql_flexible_servers_identity" {
  description = "List of identity values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.identity]
}
output "mysql_flexible_servers_location" {
  description = "List of location values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.location]
}
output "mysql_flexible_servers_maintenance_window" {
  description = "List of maintenance_window values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.maintenance_window]
}
output "mysql_flexible_servers_name" {
  description = "List of name values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.name]
}
output "mysql_flexible_servers_point_in_time_restore_time_in_utc" {
  description = "List of point_in_time_restore_time_in_utc values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.point_in_time_restore_time_in_utc]
}
output "mysql_flexible_servers_private_dns_zone_id" {
  description = "List of private_dns_zone_id values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.private_dns_zone_id]
}
output "mysql_flexible_servers_public_network_access" {
  description = "List of public_network_access values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.public_network_access]
}
output "mysql_flexible_servers_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.public_network_access_enabled]
}
output "mysql_flexible_servers_replica_capacity" {
  description = "List of replica_capacity values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.replica_capacity]
}
output "mysql_flexible_servers_replication_role" {
  description = "List of replication_role values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.replication_role]
}
output "mysql_flexible_servers_resource_group_name" {
  description = "List of resource_group_name values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.resource_group_name]
}
output "mysql_flexible_servers_sku_name" {
  description = "List of sku_name values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.sku_name]
}
output "mysql_flexible_servers_source_server_id" {
  description = "List of source_server_id values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.source_server_id]
}
output "mysql_flexible_servers_storage" {
  description = "List of storage values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.storage]
}
output "mysql_flexible_servers_tags" {
  description = "List of tags values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.tags]
}
output "mysql_flexible_servers_version" {
  description = "List of version values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.version]
}
output "mysql_flexible_servers_zone" {
  description = "List of zone values across all mysql_flexible_servers"
  value       = [for k, v in azurerm_mysql_flexible_server.mysql_flexible_servers : v.zone]
}

