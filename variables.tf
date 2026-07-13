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
  # --- Unconfirmed validation candidates, derived from azurerm_mysql_flexible_server's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FlexibleServerName] !ok
  # path: name
  #   condition: length(value) >= 3
  #   message:   [from validate.FlexibleServerName: invalid when len(value) < 3]
  #   source:    [from validate.FlexibleServerName: invalid when len(value) < 3]
  # path: name
  #   condition: length(value) <= 63
  #   message:   [from validate.FlexibleServerName: invalid when len(value) > 63]
  #   source:    [from validate.FlexibleServerName: invalid when len(value) > 63]
  # path: name
  #   source:    [from validate.FlexibleServerName] !regexp.MustCompile(`^[a-z0-9]([a-z0-9-]+[a-z0-9])?$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: administrator_login
  #   source:    [from validate.FlexibleServerAdministratorLogin] !ok
  # path: administrator_login
  #   condition: length(value) >= 1
  #   message:   [from validate.FlexibleServerAdministratorLogin: invalid when len(value) < 1]
  #   source:    [from validate.FlexibleServerAdministratorLogin: invalid when len(value) < 1]
  # path: administrator_login
  #   condition: length(value) <= 32
  #   message:   [from validate.FlexibleServerAdministratorLogin: invalid when len(value) > 32]
  #   source:    [from validate.FlexibleServerAdministratorLogin: invalid when len(value) > 32]
  # path: administrator_login
  #   source:    [from validate.FlexibleServerAdministratorLogin] !regexp.MustCompile(`^[a-zA-Z0-9_]*$`).MatchString(v)
  # path: administrator_login
  #   source:    [from validate.FlexibleServerAdministratorLogin] v == "azure_superuser" || v == "admin" || v == "administrator" || v == "root" || v == "guest" || v == "public"
  # path: administrator_password
  #   source:    [from validate.FlexibleServerAdministratorPassword] !ok
  # path: administrator_password
  #   condition: length(value) >= 8
  #   message:   [from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]
  #   source:    [from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]
  # path: administrator_password
  #   condition: length(value) <= 128
  #   message:   [from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]
  #   source:    [from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]
  # path: administrator_password_wo
  #   source:    [from validate.FlexibleServerAdministratorPassword] !ok
  # path: administrator_password_wo
  #   condition: length(value) >= 8
  #   message:   [from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]
  #   source:    [from validate.FlexibleServerAdministratorPassword: invalid when len(value) < 8]
  # path: administrator_password_wo
  #   condition: length(value) <= 128
  #   message:   [from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]
  #   source:    [from validate.FlexibleServerAdministratorPassword: invalid when len(value) > 128]
  # path: backup_retention_days
  #   condition: value >= 1 && value <= 35
  #   message:   must be between 1 and 35
  # path: create_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: customer_managed_key.primary_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: customer_managed_key.primary_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: customer_managed_key.geo_backup_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: customer_managed_key.geo_backup_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: customer_managed_key.geo_backup_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: customer_managed_key.geo_backup_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: delegated_subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: delegated_subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: high_availability.mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: maintenance_window.day_of_week
  #   condition: value >= 0 && value <= 6
  #   message:   must be between 0 and 6
  # path: maintenance_window.start_hour
  #   condition: value >= 0 && value <= 23
  #   message:   must be between 0 and 23
  # path: maintenance_window.start_minute
  #   condition: value >= 0 && value <= 59
  #   message:   must be between 0 and 59
  # path: point_in_time_restore_time_in_utc
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: private_dns_zone_id
  #   source:    [from privatezones.ValidatePrivateDnsZoneID] !ok
  # path: private_dns_zone_id
  #   source:    [from privatezones.ValidatePrivateDnsZoneID] err != nil
  # path: public_network_access
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: replication_role
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku_name
  #   source:    [from validate.FlexibleServerSkuName] !ok
  # path: sku_name
  #   source:    [from validate.FlexibleServerSkuName] !regexp.MustCompile(`^(B_(Standard_B(1|1m|2|2m|4m|8m|12m|16m|20m)s))|(GP_(Standard_D(2|4|8|16|32|48|64)ds_v4)|(Standard_D(2|4|8|16|32|48|64)ads_v5))|(MO_((Standard_E(2|4|8|16|20|32|48|64|80i)ds_v4)|(Standard_E(2|2a|4|4a|8|8a|16|16a|20|20a|32|32a|48|48a|64|64a|96|96a)ds_v5)))$`).MatchString(v)
  # path: source_server_id
  #   source:    [from servers.ValidateFlexibleServerID] !ok
  # path: source_server_id
  #   source:    [from servers.ValidateFlexibleServerID] err != nil
  # path: storage.iops
  #   condition: value >= 360 && value <= 48000
  #   message:   must be between 360 and 48000
  # path: storage.size_gb
  #   condition: value >= 20 && value <= 16384
  #   message:   must be between 20 and 16384
  # path: version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: primary_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: primary_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: geo_backup_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: geo_backup_key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: geo_backup_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: geo_backup_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: managed_hsm_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: managed_hsm_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

