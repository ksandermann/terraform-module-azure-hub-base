variable "subscription_id" {
  type = string
}

variable "organisation" {
  type = string
}

variable "environment" {
  type = string
}

variable "location_main" {
  description = "Main location of the environment. Not DR location."
  type        = string
}
