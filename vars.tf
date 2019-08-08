variable "owned-by" {
  default = "Manually created"
}

variable "availability-zones" {
  type = "list"
  default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}

variable "env-accepter" {
  default = "prod"
}
