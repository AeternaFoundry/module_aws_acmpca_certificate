output "acmpca_certificates_id" {
  description = "Map of id values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "acmpca_certificates_api_passthrough" {
  description = "Map of api_passthrough values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.api_passthrough if v.api_passthrough != null && length(v.api_passthrough) > 0 }
}
output "acmpca_certificates_arn" {
  description = "Map of arn values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "acmpca_certificates_certificate" {
  description = "Map of certificate values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.certificate if v.certificate != null && length(v.certificate) > 0 }
}
output "acmpca_certificates_certificate_authority_arn" {
  description = "Map of certificate_authority_arn values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.certificate_authority_arn if v.certificate_authority_arn != null && length(v.certificate_authority_arn) > 0 }
}
output "acmpca_certificates_certificate_chain" {
  description = "Map of certificate_chain values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.certificate_chain if v.certificate_chain != null && length(v.certificate_chain) > 0 }
}
output "acmpca_certificates_certificate_signing_request" {
  description = "Map of certificate_signing_request values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.certificate_signing_request if v.certificate_signing_request != null && length(v.certificate_signing_request) > 0 }
}
output "acmpca_certificates_region" {
  description = "Map of region values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "acmpca_certificates_signing_algorithm" {
  description = "Map of signing_algorithm values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.signing_algorithm if v.signing_algorithm != null && length(v.signing_algorithm) > 0 }
}
output "acmpca_certificates_template_arn" {
  description = "Map of template_arn values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => v.template_arn if v.template_arn != null && length(v.template_arn) > 0 }
}
output "acmpca_certificates_validity" {
  description = "Map of validity values across all acmpca_certificates, keyed the same as var.acmpca_certificates"
  value       = { for k, v in aws_acmpca_certificate.acmpca_certificates : k => one(v.validity) if v.validity != null && length(v.validity) > 0 }
}

