<!-- BEGIN_TF_DOCS -->
# ALZ.Management
This project deploys the central log analytics workspace and automation account along with Log Analytics Solutions.  It also enables Defender for Cloud and deploys the Sentinel workspace.

Further details can be found here: https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/wiki/%5BUser-Guide%5D-Management-Resources

# Customisation
This module is designed to be customised to your requirements.  Details on customisation can be found here: https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/wiki/%5BExamples%5D-Deploy-Management-Resources-With-Custom-Settings

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_security_contact"></a> [email\_security\_contact](#input\_email\_security\_contact) | Set a custom value for the security contact email address. | `string` | `"security@azure.appvia.io"` | no |
| <a name="input_log_retention_in_days"></a> [log\_retention\_in\_days](#input\_log\_retention\_in\_days) | Set a custom value for how many days to store logs in the Log Analytics workspace. | `number` | `30` | no |
| <a name="input_management_resources_tags"></a> [management\_resources\_tags](#input\_management\_resources\_tags) | Specify tags to add to "management" resources. | `map(string)` | <pre>{<br>  "BusinessCriticality": "Mission-critical",<br>  "BusinessUnit": "Platform Operations",<br>  "DataClassification": "General",<br>  "OperationsTeam": "Platform Operations",<br>  "WorkloadName": "ALZ.Management"<br>}</pre> | no |
| <a name="input_primary_location"></a> [primary\_location](#input\_primary\_location) | Sets the location for "primary" resources to be created in. | `string` | `"uksouth"` | no |
| <a name="input_root_id"></a> [root\_id](#input\_root\_id) | Sets the value used for generating unique resource naming within the module. | `string` | `"alz"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_action_group_id"></a> [action\_group\_id](#output\_action\_group\_id) | Action Group ID for the "management" resources. |
| <a name="output_configuration"></a> [configuration](#output\_configuration) | Configuration settings for the "management" resources. |
| <a name="output_log_analytics_workspace_ids"></a> [log\_analytics\_workspace\_ids](#output\_log\_analytics\_workspace\_ids) | Log Analytics Workspace ID for the "management" resources. |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | Subscription ID for the "management" resources. |
<!-- END_TF_DOCS -->