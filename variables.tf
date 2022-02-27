variable "WORKSPACE_NAME" {
  type        = string
  description = "workspaceName"
}

variable "TIER" {
  type        = string
  description = "Resource group name"
  default = "standard"
}

variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "Resource group name"
}

variable "LOCATION" {
  type        = string
  description = "Resources location"
}

variable "TAGS" {
  type        = map(string)
  description = "Tags for resources {key:value}"
}


