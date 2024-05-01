variable "backend_name" {
  description = "Backend name"
  type        = string
}

variable "backend_env" {
  description = "Environment"
  type        = string
}

variable "backend_tags" {
  description = "Tags for infrastructure resources."
  type = map(string)
}
