variable "databricks_workspace_url" {
  description = "The URL to the Azure Databricks workspace (must start with https://)"
  type = string
  default = "<Azure Databricks workspace URL>"
}

variable "resource_prefix" {
  description = "The prefix to use when naming the notebook and job"
  type = string
  default = "terraform-demo"
}

variable "email_notifier" {
  description = "The email address to send job status to"
  type = list(string)
  default = ["<Your email address>"]
}
