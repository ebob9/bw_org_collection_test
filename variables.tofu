variable "PROJECT_NAME" {
  default = "bw_org_collection_test"
  description = "Name to use for the project"
}

# variable "BW_MASTER_PASSWORD" {
#   type        = string
#   description = "Bitwarden Master Password"
#   sensitive   = true
# }

variable "BW_EMAIL" {
  type        = string
  description = "Bitwarden User Email"
}

variable "BW_SESSION" {
  type        = string
  description = "Bitwarden Master Password"
  sensitive   = true
}

variable "BW_ORG_ID" {
  type = string
  description = "Bitwarden Org UUID"
}

variable "BW_USER_ID" {
  type = string
  description = "Bitwarden User UUID"
}

