variable "AGENT_VM_NAME" {
  type    = string
  default = "agent-vm"
}

variable "LOCATION" {
  type    = string
  default = "East US"
}

variable "RESOURCE_GROUP_NAME" {
  type    = string
  default = "rg-devops"
}

variable "ADMIN_USERNAME" {
  type    = string
  default = "azureuser"
}

variable "ADMIN_PASSWORD" {
  type    = string
  default = "P@ssw0rd!"
}

variable "VM_SIZE" {
  type    = string
  default = "Standard_DS1_v2"
}
