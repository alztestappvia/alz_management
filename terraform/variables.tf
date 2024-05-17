variable "root_id" {
  type        = string
  description = "Sets the value used for generating unique resource naming within the module."
  default     = "alz"
}

variable "primary_location" {
  type        = string
  description = "Sets the location for \"primary\" resources to be created in."
  default     = "uksouth"
}

variable "email_security_contact" {
  type        = string
  description = "Set a custom value for the security contact email address."
  default     = "security@azure.appvia.io"
}

variable "log_retention_in_days" {
  type        = number
  description = "Set a custom value for how many days to store logs in the Log Analytics workspace."
  default     = 30
}

variable "management_resources_tags" {
  type        = map(string)
  description = "Specify tags to add to \"management\" resources."
  default = {
    WorkloadName        = "ALZ.Management"
    DataClassification  = "General"
    BusinessCriticality = "Mission-critical"
    BusinessUnit        = "Platform Operations"
    OperationsTeam      = "Platform Operations"
  }
}

variable "use_oidc" {
  type        = bool
  description = "Set to true to enable OIDC authentication for the Azure connection."
  default     = false
}
