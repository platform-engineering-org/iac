variable "owner_1" {
  description = "GitHub owner used to configure the provider"
  type        = string
  default     = ""
}

variable "owner_2" {
  description = "GitHub owner used to configure the provider"
  type        = string
  default     = ""
}

variable "github_token" {
  description = "GitHub access token used to configure the provider"
  type        = string
}

variable "bot_user_name" {
  type        = string
  description = "Bot user name"
}
