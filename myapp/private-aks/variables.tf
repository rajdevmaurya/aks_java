variable "NAME" {
  description = "(Required) Specifies the name of the AKS cluster."
  type        = string
  default     = "my-aks-cluster"
}

variable "RESOURCE_GROUP_NAME" {
  description = "(Required) Specifies the name of the resource group."
  type        = string
  default     = "rg-devops"
}

variable "LOCATION" {
  description = "(Required) Specifies the location where the AKS cluster will be deployed."
  type        = string
  default     = "East US"
}

variable "DNS_PREFIX" {
  description = "(Optional) DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  type        = string
  default     = "myaksdns"
}

variable "private_cluster_enabled" {
  description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}

variable "automatic_channel_upgrade" {
  description = "(Optional) The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, and stable."
  default     = "stable"
  type        = string

  validation {
    condition     = contains(["patch", "rapid", "stable"], var.automatic_channel_upgrade)
    error_message = "The upgrade mode is invalid."
  }
}

variable "sku_tier" {
  description = "(Optional) The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free."
  default     = "Free"
  type        = string

  validation {
    condition     = contains(["Free", "Paid"], var.sku_tier)
    error_message = "The sku tier is invalid."
  }
}

variable "kubernetes_version" {
  description = "Specifies the AKS Kubernetes version"
  default     = "1.29"
  type        = string
}

variable "azure_policy_enabled" {
  description = "(Optional) Should the Azure Policy Add-On be enabled? For more details please visit Understand Azure Policy for Azure Kubernetes Service"
  type        = bool
  default     = true
}

variable "default_node_pool_name" {
  description = "Specifies the name of the default node pool"
  default     = "system"
  type        = string
}

variable "default_node_pool_vm_size" {
  description = "Specifies the vm size of the default node pool"
  default     = "Standard_DS2_v2"
  type        = string
}

variable "default_node_pool_enable_auto_scaling" {
  description = "(Optional) Whether to enable auto-scaler. Defaults to false."
  type        = bool
  default     = true
}

variable "default_node_pool_availability_zones" {
  description = "Specifies the availability zones of the default node pool"
  default     = ["1", "2", "3"]
  type        = list(string)
}

variable "default_node_pool_enable_host_encryption" {
  description = "(Optional) Should the nodes in this Node Pool have host encryption enabled? Defaults to false."
  type        = bool
  default     = false
}

variable "default_node_pool_enable_node_public_ip" {
  description = "(Optional) Should each node have a Public IP Address? Defaults to false. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}

variable "default_node_pool_max_pods" {
  description = "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  type        = number
  default     = 50
}

variable "default_node_pool_os_disk_type" {
  description = "(Optional) The type of disk which should be used for the Operating System. Possible values are Ephemeral and Managed. Defaults to Managed. Changing this forces a new resource to be created."
  type        = string
  default     = "Managed"
}

variable "default_node_pool_max_count" {
  description = "(Required) The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
  type        = number
  default     = 5
}

variable "default_node_pool_min_count" {
  description = "(Required) The minimum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be less than or equal to max_count."
  type        = number
  default     = 3
}

variable "default_node_pool_node_count" {
  description = "(Optional) The initial number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be a value in the range min_count - max_count."
  type        = number
  default     = 3
}

variable "admin_username" {
  description = "(Required) Specifies the Admin Username for the AKS cluster worker nodes. Changing this forces a new resource to be created."
  type        = string
  default     = "azadmin"
}

variable "SSH_PUBLIC_KEY" {
  description = "(Required) Specifies the SSH public key used to access the cluster. Changing this forces a new resource to be created."
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDXSYq506tHWH9M0+MqKHxmSHBxa42A7fxY67nbDkAXBpTxqqyaIIjPCeZoYUNlIgHBXwLvY1PE536xTOfjwUZbmcXcZgSfc1LW/MF/3YyNzEnHC0sQy5xynl6a6DiKlPZ8WjucMf3o29mULk+kg15eahSapzjDgu0hB0+e2AauQFb3ie9BIgepckHWqaRyKSq6Lbs+j4X64HGL8u0lfm9Wdc8Uam6TzyejcwCavSzW/fA4masb8XhsTe1aIVLuzbD5SasbgSwdvJ9wr8qx4aZpmo8KsLATnFPN/MLrXKzANpDN6KpSp0GD32JNWsFgecEv+wedTO0H6KM2Q7uRznancNDPT+S2CpwPkTc3c8kKjuaKa7A2vi6lltsLpZTgY4VNjWx1eVVCvQR/Gu4DfB2xd8Vicyy0fMw8TJk8Eau72I2tMJCt9HxGQ97vnNxIfzFvKu5WxAXeJn/N9dCndUDjPJ4KoQp3OPuWnPttWTbRN3XU3OEXyqIldneFE3hUVv3v0CsjGhiX+xXiWqAJaPCUANP3I/gtN+BlLjjmrg5AeSVzugIGe2xzc3pykmPoU6Tf+Dg72ciTI358EVh/CUus9N3iMSGZXyayPPxhYM6JgW8mY3L1sgSRQPgsoWlNWEqxRX7wZSDcNEAba1Pv0SoqI0gAWWv8Xo2ZJekRkD7NQ=="
}

variable "network_dns_service_ip" {
  description = "Specifies the DNS service IP"
  default     = "10.2.0.10"
  type        = string
}

variable "network_service_cidr" {
  description = "Specifies the service CIDR"
  default     = "10.2.0.0/24"
  type        = string
}

variable "network_plugin" {
  description = "Specifies the network plugin of the AKS cluster"
  default     = "azure"
  type        = string
}

variable "role_based_access_control_enabled" {
  description = "(Required) Is Role Based Access Control Enabled? Changing this forces a new resource to be created."
  default     = true
  type        = bool
}

variable "user_linux_node_pool_name" {
  description = "Specifies the name of the default node pool"
  default     = "linux"
  type        = string
}

variable "user_win_node_pool_name" {
  description = "Specifies the name of the default node pool"
  default     = "windows"
  type        = string
}

variable "user_node_pool_mode" {
  description = "Specifies the mode of the default node pool"
  default     = "User"
  type        = string
}

variable "environment" {
  description = "Specifies the name of the environment"
  default     = "dev"
  type        = string
}
variable "create_role_assignments" {
  description = "Flag to create role assignments"
  type        = bool
  default     = true
}

