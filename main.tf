terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }

    databricks = {
      source = "databrickslabs/databricks"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "databricks" {
  host = var.databricks_workspace_url
}

# // Get the smallest available node type to use for the cluster. Choose
# // only from among available node types with local storage.
# data "databricks_node_type" "smallest" {
#   local_disk = true
# }

# // Get the latest Spark version to use for the cluster.
# data "databricks_spark_version" "latest" {}

# // Get information about the Databricks user that is calling
# // the Databricks API (the one associated with "databricks_connection_profile").
# data "databricks_current_user" "me" {}

# // Create a simple, sample notebook. Store it in a subfolder within
# // the Databricks current user's folder. The notebook contains the
# // following basic Spark code in Python.
# resource "databricks_notebook" "this" {
#   path     = "${data.databricks_current_user.me.home}/Terraform/${var.resource_prefix}-notebook.ipynb"
#   language = "PYTHON"
#   content_base64 = base64encode(<<-EOT
#     # created from ${abspath(path.module)}
#     display(spark.range(10))
#     EOT
#   )
# }

# // Create a job to run the sample notebook. The job will create
# // a cluster to run on. The cluster will use the smallest available
# // node type and run the latest version of Spark.


# // Create the job, emailing notifiers about job success or failure.
# resource "databricks_job" "this" {
#   name = "${var.resource_prefix}-job-${data.databricks_current_user.me.alphanumeric}"
#   new_cluster {
#     num_workers   = 1
#     spark_version = data.databricks_spark_version.latest.id
#     node_type_id  = data.databricks_node_type.smallest.id
#   }
#   notebook_task {
#     notebook_path = databricks_notebook.this.path
#   }
#   email_notifications {
#     on_success = var.email_notifier
#     on_failure = var.email_notifier
#   }
# }

