output "integration_aws_account_ccm_configs_id" {
  description = "Map of id values across all integration_aws_account_ccm_configs, keyed the same as var.integration_aws_account_ccm_configs except keys with no id are omitted"
  value       = { for k, v in datadog_integration_aws_account_ccm_config.integration_aws_account_ccm_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_aws_account_ccm_configs_aws_account_config_id" {
  description = "Map of aws_account_config_id values across all integration_aws_account_ccm_configs, keyed the same as var.integration_aws_account_ccm_configs except keys with no aws_account_config_id are omitted"
  value       = { for k, v in datadog_integration_aws_account_ccm_config.integration_aws_account_ccm_configs : k => v.aws_account_config_id if v.aws_account_config_id != null && length(v.aws_account_config_id) > 0 }
}
output "integration_aws_account_ccm_configs_ccm_config" {
  description = "Map of ccm_config values across all integration_aws_account_ccm_configs, keyed the same as var.integration_aws_account_ccm_configs except keys with no ccm_config are omitted"
  value       = { for k, v in datadog_integration_aws_account_ccm_config.integration_aws_account_ccm_configs : k => v.ccm_config if v.ccm_config != null && length(v.ccm_config) > 0 }
}

