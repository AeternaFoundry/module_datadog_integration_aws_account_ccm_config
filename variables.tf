variable "integration_aws_account_ccm_configs" {
  description = <<EOT
Map of integration_aws_account_ccm_configs, attributes below
Required:
    - aws_account_config_id
Optional:
    - ccm_config (block):
        - data_export_configs (optional, block):
            - bucket_name (optional)
            - bucket_region (optional)
            - report_name (optional)
            - report_prefix (optional)
            - report_type (optional)
EOT

  type = map(object({
    aws_account_config_id = string
    ccm_config = optional(list(object({
      data_export_configs = optional(list(object({
        bucket_name   = optional(string)
        bucket_region = optional(string)
        report_name   = optional(string)
        report_prefix = optional(string)
        report_type   = optional(string)
      })))
    })))
  }))
}

