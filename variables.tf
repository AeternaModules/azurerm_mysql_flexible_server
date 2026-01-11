variable "mysql_flexible_servers" {
  description = <<EOT
Map of mysql_flexible_servers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - administrator_login
    - administrator_password
    - administrator_password_wo
    - administrator_password_wo_version
    - backup_retention_days
    - create_mode
    - delegated_subnet_id
    - geo_redundant_backup_enabled
    - point_in_time_restore_time_in_utc
    - private_dns_zone_id
    - public_network_access
    - replication_role
    - sku_name
    - source_server_id
    - tags
    - version
    - zone
    - customer_managed_key (block):
        - geo_backup_key_vault_key_id (optional)
        - geo_backup_user_assigned_identity_id (optional)
        - key_vault_key_id (optional)
        - managed_hsm_key_id (optional)
        - primary_user_assigned_identity_id (optional)
    - high_availability (block):
        - mode (required)
        - standby_availability_zone (optional)
    - identity (block):
        - identity_ids (required)
        - type (required)
    - maintenance_window (block):
        - day_of_week (optional)
        - start_hour (optional)
        - start_minute (optional)
    - storage (block):
        - auto_grow_enabled (optional)
        - io_scaling_enabled (optional)
        - iops (optional)
        - log_on_disk_enabled (optional)
        - size_gb (optional)
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    tags                              = optional(map(string))
    source_server_id                  = optional(string)
    sku_name                          = optional(string)
    replication_role                  = optional(string)
    public_network_access             = optional(string)
    private_dns_zone_id               = optional(string)
    point_in_time_restore_time_in_utc = optional(string)
    delegated_subnet_id               = optional(string)
    version                           = optional(string)
    create_mode                       = optional(string)
    backup_retention_days             = optional(number, 7)
    administrator_password_wo_version = optional(number)
    administrator_password_wo         = optional(string)
    administrator_password            = optional(string)
    administrator_login               = optional(string)
    geo_redundant_backup_enabled      = optional(bool, false)
    zone                              = optional(string)
    customer_managed_key = optional(object({
      geo_backup_key_vault_key_id          = optional(string)
      geo_backup_user_assigned_identity_id = optional(string)
      key_vault_key_id                     = optional(string)
      managed_hsm_key_id                   = optional(string)
      primary_user_assigned_identity_id    = optional(string)
    }))
    high_availability = optional(object({
      mode                      = string
      standby_availability_zone = optional(string)
    }))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
    maintenance_window = optional(object({
      day_of_week  = optional(number, 0)
      start_hour   = optional(number, 0)
      start_minute = optional(number, 0)
    }))
    storage = optional(object({
      auto_grow_enabled   = optional(bool, true)
      io_scaling_enabled  = optional(bool, false)
      iops                = optional(number)
      log_on_disk_enabled = optional(bool, false)
      size_gb             = optional(number)
    }))
  }))
}

