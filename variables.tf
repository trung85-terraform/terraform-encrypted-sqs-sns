variable "region" {
  description = "The AWS region."
  default     = "ap-southeast-1"
}

variable "prefix" {
  default = "blog"
}

variable "account_id" {
  default = 667009429896
}

variable "owner" {
  default     = "DevOps"
  description = "The name of the team who manages it"
}

variable "support" {
  default     = "team@yourcompany.com"
  description = "Support contact"
}
