variable "spring_cloud_certificates" {
  description = <<EOT
Map of spring_cloud_certificates, attributes below
Required:
    - name
    - resource_group_name
    - service_name
Optional:
    - certificate_content
    - exclude_private_key
    - key_vault_certificate_id
EOT

  type = map(object({
    name                     = string
    resource_group_name      = string
    service_name             = string
    certificate_content      = optional(string)
    exclude_private_key      = optional(bool)
    key_vault_certificate_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_certificates : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_certificates : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_certificates : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_certificates : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_certificates : (
        v.certificate_content == null || (length(v.certificate_content) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

