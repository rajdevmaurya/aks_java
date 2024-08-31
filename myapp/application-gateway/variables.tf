variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "Resource group"
  default     = "rg-devops"  # Default resource group name
}

variable "APP_GATEWAY_NAME" {
  type        = string
  description = "Application name. Use only lowercase letters and numbers"
  default     = "appgateway01"  # Default application gateway name
}

variable "LOCATION" {
  type        = string
  description = "Azure region where to create resources."
  default     = "eastus"  # Default location for resources
}

variable "VIRTUAL_NETWORK_NAME" {
  type        = string
  description = "Virtual network name. This service will create subnets in this network."
  default     = "aks-vnet"  # Default virtual network name
}

variable "APPGW_PUBLIC_IP_NAME" {
  type        = string
  description = "PUBLIC IP. This service will create subnets in this network."
  default     = "appgw-public-ip"  # Default public IP name for the application gateway
}
