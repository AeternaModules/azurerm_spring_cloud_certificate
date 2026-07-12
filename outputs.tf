output "spring_cloud_certificates_certificate_content" {
  description = "Map of certificate_content values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.certificate_content }
}
output "spring_cloud_certificates_exclude_private_key" {
  description = "Map of exclude_private_key values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.exclude_private_key }
}
output "spring_cloud_certificates_key_vault_certificate_id" {
  description = "Map of key_vault_certificate_id values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.key_vault_certificate_id }
}
output "spring_cloud_certificates_name" {
  description = "Map of name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.name }
}
output "spring_cloud_certificates_resource_group_name" {
  description = "Map of resource_group_name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.resource_group_name }
}
output "spring_cloud_certificates_service_name" {
  description = "Map of service_name values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.service_name }
}
output "spring_cloud_certificates_thumbprint" {
  description = "Map of thumbprint values across all spring_cloud_certificates, keyed the same as var.spring_cloud_certificates"
  value       = { for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : k => v.thumbprint }
}

