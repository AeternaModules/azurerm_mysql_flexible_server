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
    - administrator_password_key_vault_id (alternative to administrator_password - read from Key Vault instead)
    - administrator_password_key_vault_secret_name (alternative to administrator_password - read from Key Vault instead)
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
    location                                     = string
    name                                         = string
    resource_group_name                          = string
    tags                                         = optional(map(string))
    source_server_id                             = optional(string)
    sku_name                                     = optional(string)
    replication_role                             = optional(string)
    public_network_access                        = optional(string)
    private_dns_zone_id                          = optional(string)
    point_in_time_restore_time_in_utc            = optional(string)
    delegated_subnet_id                          = optional(string)
    version                                      = optional(string)
    create_mode                                  = optional(string)
    backup_retention_days                        = optional(number)
    administrator_password_wo_version            = optional(number)
    administrator_password_wo                    = optional(string)
    administrator_password                       = optional(string)
    administrator_password_key_vault_id          = optional(string)
    administrator_password_key_vault_secret_name = optional(string)
    administrator_login                          = optional(string)
    geo_redundant_backup_enabled                 = optional(bool)
    zone                                         = optional(string)
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
      day_of_week  = optional(number)
      start_hour   = optional(number)
      start_minute = optional(number)
    }))
    storage = optional(object({
      auto_grow_enabled   = optional(bool)
      io_scaling_enabled  = optional(bool)
      iops                = optional(number)
      log_on_disk_enabled = optional(bool)
      size_gb             = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.FlexibleServerName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.FlexibleServerName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_login == null || (length(v.administrator_login) >= 1)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorLogin: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_login == null || (length(v.administrator_login) <= 32)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorLogin: invalid when len(value) > 32]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_password == null || (length(v.administrator_password) >= 8)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_password == null || (length(v.administrator_password) <= 128)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_password_wo == null || (length(v.administrator_password_wo) >= 8)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.administrator_password_wo == null || (length(v.administrator_password_wo) <= 128)
      )
    ])
    error_message = "[from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.backup_retention_days == null || (v.backup_retention_days >= 1 && v.backup_retention_days <= 35)
      )
    ])
    error_message = "must be between 1 and 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.maintenance_window == null || (v.maintenance_window.day_of_week == null || (v.maintenance_window.day_of_week >= 0 && v.maintenance_window.day_of_week <= 6))
      )
    ])
    error_message = "must be between 0 and 6"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.maintenance_window == null || (v.maintenance_window.start_hour == null || (v.maintenance_window.start_hour >= 0 && v.maintenance_window.start_hour <= 23))
      )
    ])
    error_message = "must be between 0 and 23"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.maintenance_window == null || (v.maintenance_window.start_minute == null || (v.maintenance_window.start_minute >= 0 && v.maintenance_window.start_minute <= 59))
      )
    ])
    error_message = "must be between 0 and 59"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.storage == null || (v.storage.iops == null || (v.storage.iops >= 360 && v.storage.iops <= 48000))
      )
    ])
    error_message = "must be between 360 and 48000"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.storage == null || (v.storage.size_gb == null || (v.storage.size_gb >= 20 && v.storage.size_gb <= 16384))
      )
    ])
    error_message = "must be between 20 and 16384"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_servers : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 47 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

