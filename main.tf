resource "datadog_integration_aws_account_ccm_config" "integration_aws_account_ccm_configs" {
  for_each = var.integration_aws_account_ccm_configs

  aws_account_config_id = each.value.aws_account_config_id

  dynamic "ccm_config" {
    for_each = each.value.ccm_config != null ? each.value.ccm_config : []
    content {
      dynamic "data_export_configs" {
        for_each = ccm_config.value.data_export_configs != null ? ccm_config.value.data_export_configs : []
        content {
          bucket_name   = data_export_configs.value.bucket_name
          bucket_region = data_export_configs.value.bucket_region
          report_name   = data_export_configs.value.report_name
          report_prefix = data_export_configs.value.report_prefix
          report_type   = data_export_configs.value.report_type
        }
      }
    }
  }
}

