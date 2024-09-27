variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure location where the resources will be created."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account."
}

variable "account_tier" {
  type        = string
  description = "The tier of the Storage Account."
  default     = "Standard"
}

variable "replication_type" {
  type        = string
  description = "The replication type for the Storage Account."
  default     = "LRS"
}