variable "acmpca_certificates" {
  description = <<EOT
Map of acmpca_certificates, attributes below
Required:
    - certificate_authority_arn
    - certificate_signing_request
    - signing_algorithm
    - validity (block):
        - type (required)
        - value (required)
Optional:
    - api_passthrough
    - region
    - template_arn
EOT

  type = map(object({
    certificate_authority_arn   = string
    certificate_signing_request = string
    signing_algorithm           = string
    api_passthrough             = optional(string)
    region                      = optional(string)
    template_arn                = optional(string)
    validity = object({
      type  = string
      value = string
    })
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

