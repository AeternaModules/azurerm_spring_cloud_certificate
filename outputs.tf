output "spring_cloud_certificates" {
  description = "All spring_cloud_certificate resources"
  value       = azurerm_spring_cloud_certificate.spring_cloud_certificates
}
output "spring_cloud_certificates_certificate_content" {
  description = "List of certificate_content values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.certificate_content]
}
output "spring_cloud_certificates_exclude_private_key" {
  description = "List of exclude_private_key values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.exclude_private_key]
}
output "spring_cloud_certificates_key_vault_certificate_id" {
  description = "List of key_vault_certificate_id values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.key_vault_certificate_id]
}
output "spring_cloud_certificates_name" {
  description = "List of name values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.name]
}
output "spring_cloud_certificates_resource_group_name" {
  description = "List of resource_group_name values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.resource_group_name]
}
output "spring_cloud_certificates_service_name" {
  description = "List of service_name values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.service_name]
}
output "spring_cloud_certificates_thumbprint" {
  description = "List of thumbprint values across all spring_cloud_certificates"
  value       = [for k, v in azurerm_spring_cloud_certificate.spring_cloud_certificates : v.thumbprint]
}

