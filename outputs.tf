output "host" {
  value = "https://${azurerm_databricks_workspace.databricks_workspace.workspace_url}/"
}

output "workspace_url" {
  value = azurerm_databricks_workspace.databricks_workspace.workspace_url
}