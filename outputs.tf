output "spring_cloud_certificates_id" {
  description = "Map of id values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_certificates_certificate_content" {
  description = "Map of certificate_content values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.certificate_content if v.certificate_content != null && length(v.certificate_content) > 0 }
}
output "spring_cloud_certificates_exclude_private_key" {
  description = "Map of exclude_private_key values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.exclude_private_key if v.exclude_private_key != null }
}
output "spring_cloud_certificates_key_vault_certificate_id" {
  description = "Map of key_vault_certificate_id values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.key_vault_certificate_id if v.key_vault_certificate_id != null && length(v.key_vault_certificate_id) > 0 }
}
output "spring_cloud_certificates_name" {
  description = "Map of name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "spring_cloud_certificates_service_name" {
  description = "Map of service_name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "spring_cloud_certificates_thumbprint" {
  description = "Map of thumbprint values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}

