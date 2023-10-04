variable "token" {
  type        = string
  description = "Gitlab token"
  sensitive   = true
}

variable "insecure" {
  type        = string
  description = "Do not verify certifcate if true"
}

variable "base_url" {
  type        = string
  description = "gitlab api end point"
}

variable "top_level_group_full_path" {
  type        = string
  description = "GitLab top level group full path"
  sensitive   = true
}

variable "ldap_developers_group" {
  type        = string
  description = "LDAP developers group"
  sensitive   = true
}

variable "ldap_owners_group" {
  type        = string
  description = "LDAP owners group"
  sensitive   = true
}
