# Variables for GCP infrastructure module

variable "gcp_account_json" {
  type        = string
  description = "File path and name of service account access token file."
}

variable "gcp_project" {
  type        = string
  description = "GCP project in which the quickstart will be deployed."
}

variable "gcp_region" {
  type        = string
  description = "GCP region used for all resources."
  default     = "us-east4"
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone used for all resources."
  default     = "us-east4-a"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "quickstart"
}

variable "machine_type" {
  type        = string
  description = "Machine type used for all compute instances"
  default     = "n1-standard-2"
}

variable "rancher_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for Rancher server cluster"
  default     = "v1.23.14+k3s1"
}

variable "workload_kubernetes_version" {
  type        = string
  description = "Kubernetes version to use for managed workload cluster"
  default     = "v1.23.14+rke2r1"
}

variable "cert_manager_version" {
  type        = string
  description = "Version of cert-manager to install alongside Rancher (format: 0.0.0)"
  default     = "1.10.0"
}

variable "rancher_version" {
  type        = string
  description = "Rancher server version (format: v0.0.0)"
  default     = "2.7.0"
}

# Required
variable "rancher_server_admin_password" {
  type        = string
  description = "Admin password to use for Rancher server bootstrap, min. 12 characters"
}


# Local variables used to reduce repetition
locals {
  node_username = "gcpuser"
}
