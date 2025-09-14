variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = "platform-building-blocks-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

# provider creds should come from environment (ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID, ARM_SUBSCRIPTION_ID)
