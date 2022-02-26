// Print the URL to the notebook.
output "notebook_url" {
  value = databricks_notebook.this.url
}

// Print the URL to the job.
output "job_url" {
  value = databricks_job.this.url
}