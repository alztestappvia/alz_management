# Output a copy of configure_management_resources for use
# by the core module instance

output "configuration" {
  description = "Configuration settings for the \"management\" resources."
  value       = local.configure_management_resources
}

output "subscription_id" {
  description = "Subscription ID for the \"management\" resources."
  value       = data.azurerm_client_config.current.subscription_id
}

output "log_analytics_workspace_ids" {
  description = "Log Analytics Workspace ID for the \"management\" resources."
  value       = [for k, v in module.alz.azurerm_log_analytics_workspace.management : v.id]
}

output "action_group_id" {
  description = "Action Group ID for the \"management\" resources."
  value       = azurerm_monitor_action_group.platform_action_group["mgmt"].id
}
