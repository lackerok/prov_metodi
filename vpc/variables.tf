variable "env_name" {
  type        = string
  description = "Environment name or network prefix"
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Availability zone"
}

variable "cidr" {
  type        = string
  description = "Subnet CIDR block (e.g. 10.0.1.0/24)"
}
