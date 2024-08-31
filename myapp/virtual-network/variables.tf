variable "AKS_VNET_NAME" {
  type    = string
  default = "aks-vnet"
}

variable "AKS_ADDRESS_SPACE" {
  type    = string
  default = "10.0.0.0/16"
}

variable "AKS_SUBNET_NAME" {
  type    = string
  default = "aks-subnet"
}

variable "AKS_SUBNET_ADDRESS_PREFIX" {
  type    = string
  default = "10.0.1.0/24"
}

variable "APPGW_SUBNET_NAME" {
  type    = string
  default = "appgw-subnet"
}

variable "APPGW_SUBNET_ADDRESS_PREFIX" {
  type    = string
  default = "10.0.2.0/24"
}

variable "LOCATION" {
  type    = string
  default = "East US"
}

variable "RESOURCE_GROUP_NAME" {
  type    = string
  default = "rg-devops"
}

variable "ACR_VNET_NAME" {
  type    = string
  default = "acr-vnet"
}

variable "ACR_SUBNET_NAME" {
  type    = string
  default = "acr-subnet"
}

variable "ACR_SUBNET_ADDRESS_PREFIX" {
  type    = string
  default = "10.1.1.0/24"
}

variable "ACR_ADDRESS_SPACE" {
  type    = string
  default = "10.1.0.0/16"
}

variable "AGENT_VNET_NAME" {
  type    = string
  default = "agent-vnet"
}

variable "AGENT_SUBNET_NAME" {
  type    = string
  default = "agent-subnet"
}

variable "AGENT_SUBNET_ADDRESS_PREFIX" {
  type    = string
  default = "10.2.1.0/24"
}

variable "AGENT_ADDRESS_SPACE" {
  type    = string
  default = "10.2.0.0/16"
}
