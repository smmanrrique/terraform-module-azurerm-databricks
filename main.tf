resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 4
}

resource "azurerm_databricks_workspace" "databricks_workspace" {
  name                        = "${var.WORKSPACE_NAME}databricksw"
  resource_group_name         = var.RESOURCE_GROUP_NAME
  location                    = var.LOCATION
  sku                         = var.TIER
  managed_resource_group_name = "${var.WORKSPACE_NAME}dwmanaged${random_string.naming.result}"
  tags                        = var.TAGS
}


