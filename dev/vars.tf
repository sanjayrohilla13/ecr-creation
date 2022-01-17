variable "application_name" {}
variable "repo_name" {}
variable "environment" {}
variable "application_id" {}
variable "repo_list" {
    type = list
}

locals {
  repo_count = length(var.repo_list)
}