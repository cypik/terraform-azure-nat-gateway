variable "repository" {
  type        = string
  default     = "https://github.com/cypik/terraform-azure-nat-gateway"
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = "info@cypik.com"
  description = "ManagedBy, eg 'info@cypik.com'"
}

variable "location" {
  type        = string
  default     = ""
  description = "Azure region to use"
}

variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Project environment"
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "Name of the resource group to use"
}

variable "public_ip_zones" {
  type        = list(string)
  default     = null
  description = "Public ip Zones to configure."
}

variable "public_ip_ids" {
  type        = list(string)
  default     = []
  description = "List of public ips to use. Create one ip if not provided"
}

variable "create_public_ip" {
  type        = bool
  default     = true
  description = "Should we create a public IP or not?"
}

variable "nat_gateway_idle_timeout" {
  type        = number
  default     = 4
  description = "Idle timeout configuration in minutes for Nat Gateway"
}

variable "subnet_ids" {
  type        = string
  default     = ""
  description = "Ids of subnets to associate with the Nat Gateway"
}

variable "create_nat_gateway" {
  type        = bool
  default     = true
  description = "Whether to create the NAT Gateway resource."
}

variable "azurerm_subnet_nat_gateway_association_enabled" {
  type        = bool
  default     = true
  description = "Whether to associate the given subnets with the NAT Gateway."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control whether module resources are created."
}