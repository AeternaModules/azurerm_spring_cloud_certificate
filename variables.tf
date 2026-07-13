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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_certificate's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
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
  # path: service_name
  #   source:    [from validate.SpringCloudServiceName] !ok
  # path: service_name
  #   source:    [from validate.SpringCloudServiceName] !regexp.MustCompile(`^([a-z])([a-z\d-]{2,30})([a-z\d])$`).MatchString(v)
  # path: certificate_content
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_vault_certificate_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_certificate_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

