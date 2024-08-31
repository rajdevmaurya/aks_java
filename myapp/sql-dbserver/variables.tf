variable "RESOURCE_GROUP_NAME" {
  type        = string
  default     = "rg-devops"
}

variable "LOCATION" {
  type        = string
  default     = "East US"
}

variable "COLLATION" {
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "DB_NAME" {
  type        = string
  default     = "mydatabase"
}

variable "DBPASSWORD" {
  type        = string
  default     = "P@ssw0rd123!"  # Ensure this meets your security requirements
}

variable "DBSERVER_NAME" {
  type        = string
  default     = "mydbserver07327"
}

variable "DBUSERNAME" {
  type        = string
  default     = "adminuser"
}

# Uncomment and set a default value if needed
# variable "VNETRULE" {
#   type        = string
#   default     = "myvnetrule"
# }
