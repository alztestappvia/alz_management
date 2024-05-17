# Configure custom management resources settings
locals {
  configure_management_resources = {
    settings = {
      log_analytics = {
        config = {
          # Set a custom number of days to retain logs
          retention_in_days = var.log_retention_in_days
          enable_sentinel   = true
        }
      }
      security_center = {
        config = {
          # Configure a valid security contact email address
          email_security_contact = var.email_security_contact
        }
      }
    }
    # Set the default location
    location = var.primary_location
    # Create a custom tags input
    tags = var.management_resources_tags
    advanced = {
      # Configure custom settings by resource type
      custom_settings_by_resource_type = {
        azurerm_automation_account = {
          management = {
            public_network_access_enabled = false
          }
        }
        azurerm_log_analytics_workspace = {
          management = {
            daily_quota_gb = 1
          }
        }
      }
    }
  }
}
