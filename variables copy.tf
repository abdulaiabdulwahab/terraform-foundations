variable "subscription_id" {
  description = "Azure subscription used for this deployment"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "canadacentral"
}

variable "project_name" {
  description = "Name used when creating resources"
  type        = string
  default     = "tf-foundations"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vnet_address_space" {
  description = "Address space assigned to the VNet"
  type        = list(string)

  default = [
    "10.10.0.0/16"
  ]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes assigned to the subnet"
  type        = list(string)

  default = [
    "10.10.2.0/24"
  ]
}